@interface VOTBrailleGestureCandidateManager
- (BOOL)hasNextCandidate;
- (NSString)currentCandidateAnalysisString;
- (NSString)currentCandidateSurfaceString;
- (VOTBrailleGestureCandidateManager)init;
- (void)analyzeString:(id)string language:(id)language;
- (void)deactivate;
- (void)didSelectCurrentCandidate;
- (void)moveToNextCandidate;
- (void)moveToPreviousCandidate;
@end

@implementation VOTBrailleGestureCandidateManager

- (VOTBrailleGestureCandidateManager)init
{
  v6.receiver = self;
  v6.super_class = VOTBrailleGestureCandidateManager;
  v2 = [(VOTBrailleGestureCandidateManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isActive = 0;
    v4 = v2;
  }

  return v3;
}

- (void)analyzeString:(id)string language:(id)language
{
  stringCopy = string;
  languageCopy = language;
  v7 = languageCopy;
  self->_isActive = 1;
  if (!self->_mecabra || !self->_language || ([languageCopy isEqualToString:?] & 1) == 0)
  {
    v8 = [[VOTBrailleGestureMecabraWrapper alloc] initWithLanguage:v7];
    mecabra = self->_mecabra;
    self->_mecabra = v8;

    objc_storeStrong(&self->_language, language);
  }

  [(VOTBrailleGestureMecabraWrapper *)self->_mecabra anlayzeString:stringCopy];
  v10 = objc_alloc_init(NSMutableArray);
  analyzeStrings = self->_analyzeStrings;
  self->_analyzeStrings = v10;

  v12 = objc_alloc_init(NSMutableArray);
  surfaceStrings = self->_surfaceStrings;
  self->_surfaceStrings = v12;

  moveToNextCandidate = [(VOTBrailleGestureMecabraWrapper *)self->_mecabra moveToNextCandidate];
  v15 = self->_analyzeStrings;
  if (moveToNextCandidate)
  {
    currentCandidateAnalysisString = [(VOTBrailleGestureMecabraWrapper *)self->_mecabra currentCandidateAnalysisString];
    [(NSMutableArray *)v15 addObject:currentCandidateAnalysisString];

    v17 = self->_surfaceStrings;
    currentCandidateSurfaceString = [(VOTBrailleGestureMecabraWrapper *)self->_mecabra currentCandidateSurfaceString];
    [(NSMutableArray *)v17 addObject:currentCandidateSurfaceString];
  }

  else
  {
    [(NSMutableArray *)self->_analyzeStrings addObject:stringCopy];
    [(NSMutableArray *)self->_surfaceStrings addObject:&stru_1001CBF90];
  }

  self->_currentIndex = 0;
}

- (void)deactivate
{
  self->_isActive = 0;
  analyzeStrings = self->_analyzeStrings;
  self->_analyzeStrings = 0;

  surfaceStrings = self->_surfaceStrings;
  self->_surfaceStrings = 0;

  self->_currentIndex = 0;
}

- (BOOL)hasNextCandidate
{
  if (!self->_isActive)
  {
    return 0;
  }

  v13 = v2;
  v14 = v3;
  currentIndex = self->_currentIndex;
  if (currentIndex != [(NSMutableArray *)self->_analyzeStrings count]- 1)
  {
    return 1;
  }

  if ([(VOTBrailleGestureMecabraWrapper *)self->_mecabra moveToNextCandidate])
  {
    analyzeStrings = self->_analyzeStrings;
    currentCandidateAnalysisString = [(VOTBrailleGestureMecabraWrapper *)self->_mecabra currentCandidateAnalysisString];
    [(NSMutableArray *)analyzeStrings addObject:currentCandidateAnalysisString];

    surfaceStrings = self->_surfaceStrings;
    currentCandidateSurfaceString = [(VOTBrailleGestureMecabraWrapper *)self->_mecabra currentCandidateSurfaceString];
    [(NSMutableArray *)surfaceStrings addObject:currentCandidateSurfaceString];

    return 1;
  }

  v11 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Candidate Manager: no more candidates", v12, 2u);
  }

  return 0;
}

- (void)moveToNextCandidate
{
  if (self->_isActive)
  {
    if ([(VOTBrailleGestureCandidateManager *)self hasNextCandidate])
    {
      ++self->_currentIndex;
    }
  }
}

- (void)moveToPreviousCandidate
{
  if (self->_isActive)
  {
    if ([(VOTBrailleGestureCandidateManager *)self hasPreviousCandidate])
    {
      --self->_currentIndex;
    }
  }
}

- (NSString)currentCandidateAnalysisString
{
  if (self->_isActive)
  {
    v4 = [(NSMutableArray *)self->_analyzeStrings objectAtIndex:self->_currentIndex, v2];
  }

  else
  {
    v4 = &stru_1001CBF90;
  }

  return v4;
}

- (NSString)currentCandidateSurfaceString
{
  if (self->_isActive)
  {
    v4 = [(NSMutableArray *)self->_surfaceStrings objectAtIndex:self->_currentIndex, v2];
  }

  else
  {
    v4 = &stru_1001CBF90;
  }

  return v4;
}

- (void)didSelectCurrentCandidate
{
  if (self->_isActive)
  {
    mecabra = self->_mecabra;
    currentCandidateSurfaceString = [(VOTBrailleGestureCandidateManager *)self currentCandidateSurfaceString];
    [(VOTBrailleGestureMecabraWrapper *)mecabra didSelectCandidateWithSurfaceString:currentCandidateSurfaceString];
  }
}

@end