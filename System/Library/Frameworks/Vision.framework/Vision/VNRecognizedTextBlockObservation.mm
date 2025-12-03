@interface VNRecognizedTextBlockObservation
- (BOOL)shouldBeWrappedWithNextLine;
- (NSArray)getChildren;
- (NSArray)getLines;
- (NSArray)getRecognizedLanguages;
- (NSString)getTranscript;
- (VNRecognizedTextBlockObservation)initWithRequestRevision:(unint64_t)revision crOutputRegion:(id)region;
- (id)boundingBoxForRange:(_NSRange)range error:(id *)error;
- (id)debugDescription;
- (id)getDataDetectorResults:(id *)results;
- (id)topCandidates:(unint64_t)candidates;
@end

@implementation VNRecognizedTextBlockObservation

- (id)getDataDetectorResults:(id *)results
{
  v22 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v16 = [(CROutputRegion *)self->_crOutputRegion contentsWithTypes:2048];
  if ([v16 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v16;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [VNDataDetectorResult alloc];
          ddResult = [v9 ddResult];
          v12 = [(VNDataDetectorResult *)v10 initWithDDScannerResult:ddResult observation:self];

          dataType = [v9 dataType];
          if ((dataType - 1) >= 9)
          {
            v14 = 0;
          }

          else
          {
            v14 = dataType;
          }

          [(VNDataDetectorResult *)v12 setType:v14];
          [v4 addObject:v12];
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  kdebug_trace();

  return v4;
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = VNRecognizedTextBlockObservation;
  v3 = [(VNRecognizedTextBlockObservation *)&v7 debugDescription];
  getTranscript = [(VNRecognizedTextBlockObservation *)self getTranscript];
  v5 = [v3 stringByAppendingFormat:@" transcript=%@", getTranscript];

  return v5;
}

- (NSArray)getRecognizedLanguages
{
  v8[1] = *MEMORY[0x1E69E9840];
  getCROutputRegion = [(VNRecognizedTextBlockObservation *)self getCROutputRegion];
  recognizedLocale = [getCROutputRegion recognizedLocale];

  if (recognizedLocale)
  {
    recognizedLocale2 = [getCROutputRegion recognizedLocale];
    v5 = [recognizedLocale2 copy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (BOOL)shouldBeWrappedWithNextLine
{
  getCROutputRegion = [(VNRecognizedTextBlockObservation *)self getCROutputRegion];
  if ([getCROutputRegion type] == 8)
  {
    shouldWrapToNextLine = [getCROutputRegion shouldWrapToNextLine];
  }

  else
  {
    shouldWrapToNextLine = 0;
  }

  return shouldWrapToNextLine;
}

- (NSArray)getLines
{
  v3 = [(CROutputRegion *)self->_crOutputRegion contentsWithTypes:8];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__VNRecognizedTextBlockObservation_getLines__block_invoke;
  v8[3] = &unk_1E77B5C88;
  v5 = v4;
  v9 = v5;
  selfCopy = self;
  [v3 enumerateObjectsUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __44__VNRecognizedTextBlockObservation_getLines__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = -[VNRecognizedTextBlockObservation initWithRequestRevision:crOutputRegion:]([VNRecognizedTextBlockObservation alloc], "initWithRequestRevision:crOutputRegion:", [*(a1 + 40) requestRevision], v4);

  [v3 addObject:v5];
}

- (NSString)getTranscript
{
  v2 = [(VNRecognizedTextBlockObservation *)self topCandidates:1];
  firstObject = [v2 firstObject];

  string = [firstObject string];

  return string;
}

- (id)boundingBoxForRange:(_NSRange)range error:(id *)error
{
  error = [(CROutputRegion *)self->_crOutputRegion quadForTextInCharacterRange:range.location, range.length, error];
  v6 = error;
  if (error)
  {
    [error topLeft];
    v8 = v7;
    v10 = 1.0 - v9;
    [v6 topRight];
    v12 = v11;
    v14 = 1.0 - v13;
    [v6 bottomLeft];
    v16 = v15;
    v18 = 1.0 - v17;
    [v6 bottomRight];
    v21 = [[VNRectangleObservation alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] topLeft:v8 topRight:v10 bottomRight:v12 bottomLeft:v14, v20, 1.0 - v19, v16, v18];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)topCandidates:(unint64_t)candidates
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  candidates = [(CROutputRegion *)self->_crOutputRegion candidates];
  if (!candidates)
  {
    v24[0] = self->_crOutputRegion;
    candidates = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  v7 = [candidates count];
  if (v7 >= candidates)
  {
    candidatesCopy = candidates;
  }

  else
  {
    candidatesCopy = v7;
  }

  v9 = [candidates subarrayWithRange:{0, candidatesCopy}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [VNRecognizedTextBlock alloc];
        v17 = [(VNRecognizedTextBlock *)v16 initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:v15];
        if (v17)
        {
          [v5 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v5;
}

- (NSArray)getChildren
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  children = [(CROutputRegion *)self->_crOutputRegion children];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = [[VNRecognizedTextBlock alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (VNRecognizedTextBlockObservation)initWithRequestRevision:(unint64_t)revision crOutputRegion:(id)region
{
  regionCopy = region;
  boundingQuad = [regionCopy boundingQuad];
  [boundingQuad topLeft];
  v10 = v9;
  v12 = 1.0 - v11;
  boundingQuad2 = [regionCopy boundingQuad];
  [boundingQuad2 topRight];
  v15 = v14;
  v17 = 1.0 - v16;
  boundingQuad3 = [regionCopy boundingQuad];
  [boundingQuad3 bottomRight];
  v20 = v19;
  v22 = 1.0 - v21;
  boundingQuad4 = [regionCopy boundingQuad];
  [boundingQuad4 bottomLeft];
  v32.receiver = self;
  v32.super_class = VNRecognizedTextBlockObservation;
  v26 = [(VNRectangleObservation *)&v32 initWithRequestRevision:revision topLeft:v10 topRight:v12 bottomRight:v15 bottomLeft:v17, v20, v22, v25, 1.0 - v24];

  if (v26)
  {
    objc_storeStrong(&v26->_crOutputRegion, region);
    [(CROutputRegion *)v26->_crOutputRegion rawConfidence];
    [(VNObservation *)v26 setConfidence:?];
    trackingID = [(CROutputRegion *)v26->_crOutputRegion trackingID];

    crOutputRegion = v26->_crOutputRegion;
    if (trackingID)
    {
      [(CROutputRegion *)crOutputRegion trackingID];
    }

    else
    {
      [(CROutputRegion *)crOutputRegion uuid];
    }
    v29 = ;
    [(VNObservation *)v26 setUUID:v29];

    v30 = v26;
  }

  return v26;
}

@end