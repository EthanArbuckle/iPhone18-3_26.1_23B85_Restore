@interface VOTBrailleGestureMecabraWrapper
- (BOOL)_moveToNextRawCandidate;
- (BOOL)moveToNextCandidate;
- (VOTBrailleGestureMecabraWrapper)initWithLanguage:(id)a3;
- (void)anlayzeString:(id)a3;
- (void)dealloc;
- (void)didSelectCandidateWithSurfaceString:(id)a3;
@end

@implementation VOTBrailleGestureMecabraWrapper

- (VOTBrailleGestureMecabraWrapper)initWithLanguage:(id)a3
{
  v14.receiver = self;
  v14.super_class = VOTBrailleGestureMecabraWrapper;
  v3 = [(VOTBrailleGestureMecabraWrapper *)&v14 init];
  if (v3)
  {
    v4 = NSHomeDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"/Library/Accessibility/brailleLearningDict_ja"];

    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    if ((v7 & 1) == 0)
    {
      v8 = +[NSFileManager defaultManager];
      [v8 createDirectoryAtPath:v5 withIntermediateDirectories:0 attributes:0 error:0];
    }

    [NSURL fileURLWithPath:v5];
    v3->_mecabra = MecabraCreateWithOptions();
    v3->_context = MecabraContextCreateMutable();
    v9 = objc_opt_new();
    candidateRefForSurface = v3->_candidateRefForSurface;
    v3->_candidateRefForSurface = v9;

    v3->_reachedEnd = v3->_mecabra == 0;
    currentAnalysis = v3->_currentAnalysis;
    v3->_currentAnalysis = &stru_1001CBF90;

    currentSurface = v3->_currentSurface;
    v3->_currentSurface = &stru_1001CBF90;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_mecabra)
  {
    MecabraRelease();
  }

  if (self->_context)
  {
    MecabraContextRelease();
  }

  v3.receiver = self;
  v3.super_class = VOTBrailleGestureMecabraWrapper;
  [(VOTBrailleGestureMecabraWrapper *)&v3 dealloc];
}

- (void)anlayzeString:(id)a3
{
  v5 = a3;
  if (self->_mecabra)
  {
    v8 = v5;
    objc_storeStrong(&self->_string, a3);
    v6 = objc_opt_new();
    candidateRefForSurface = self->_candidateRefForSurface;
    self->_candidateRefForSurface = v6;

    self->_reachedEnd = 0;
    objc_storeStrong(&self->_currentAnalysis, a3);
    objc_storeStrong(&self->_currentSurface, a3);
    MecabraAnalyzeStringWithContext();
    v5 = v8;
  }
}

- (BOOL)moveToNextCandidate
{
  while (1)
  {
    [(VOTBrailleGestureMecabraWrapper *)self _moveToNextRawCandidate];
    if (self->_reachedEnd)
    {
      break;
    }

    v3 = [(NSString *)self->_string length];
    if (v3 == [(NSString *)self->_currentAnalysis length])
    {
      return !self->_reachedEnd;
    }
  }

  return 0;
}

- (BOOL)_moveToNextRawCandidate
{
  if (self->_reachedEnd)
  {
    LOBYTE(NextCandidate) = 0;
  }

  else
  {
    NextCandidate = MecabraGetNextCandidate();
    if (NextCandidate)
    {
      v4 = NextCandidate;
      v5 = MecabraCandidateGetAnalysisString();
      currentAnalysis = self->_currentAnalysis;
      self->_currentAnalysis = v5;

      v7 = MecabraCandidateGetSurface();
      currentSurface = self->_currentSurface;
      self->_currentSurface = v7;

      [(NSMutableDictionary *)self->_candidateRefForSurface setObject:v4 forKeyedSubscript:self->_currentSurface];
      LOBYTE(NextCandidate) = 1;
    }

    else
    {
      self->_reachedEnd = 1;
    }
  }

  return NextCandidate;
}

- (void)didSelectCandidateWithSurfaceString:(id)a3
{
  if ([(NSMutableDictionary *)self->_candidateRefForSurface objectForKey:a3])
  {
    MecabraContextAddInlineCandidate();
  }

  mecabra = self->_mecabra;
  context = self->_context;

  _MecabraAcceptInlineCandidates(mecabra, context);
}

@end