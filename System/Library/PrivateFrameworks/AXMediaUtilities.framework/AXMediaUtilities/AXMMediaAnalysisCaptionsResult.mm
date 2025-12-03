@interface AXMMediaAnalysisCaptionsResult
- (AXMMediaAnalysisCaptionsResult)initWithCoder:(id)coder;
- (id)description;
@end

@implementation AXMMediaAnalysisCaptionsResult

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMMediaAnalysisCaptionsResult<%p>", self];
  imageCaptionResults = [(AXMMediaAnalysisCaptionsResult *)self imageCaptionResults];
  v5 = [imageCaptionResults count];

  if (v5)
  {
    [v3 appendString:@" Image Caption results:\n"];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    imageCaptionResults2 = [(AXMMediaAnalysisCaptionsResult *)self imageCaptionResults];
    v7 = [imageCaptionResults2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(imageCaptionResults2);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          text = [v11 text];
          v13 = MEMORY[0x1E696AD98];
          [v11 confidence];
          v14 = [v13 numberWithDouble:?];
          [v3 appendFormat:@"  - Text: '%@' Confidence: %@\n", text, v14];
        }

        v8 = [imageCaptionResults2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v3 appendString:@" [no image caption results]"];
  }

  return v3;
}

- (AXMMediaAnalysisCaptionsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXMMediaAnalysisCaptionsResult;
  v5 = [(AXMMediaAnalysisCaptionsResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageCaptionResults"];
    imageCaptionResults = v5->_imageCaptionResults;
    v5->_imageCaptionResults = v6;
  }

  return v5;
}

@end