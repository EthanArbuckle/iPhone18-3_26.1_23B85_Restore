@interface MAFlashingLightsProcessorResult
- (id)description;
@end

@implementation MAFlashingLightsProcessorResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MAFlashingLightsProcessorResult surfaceProcessed](self, "surfaceProcessed")}];
  v5 = MEMORY[0x1E696AD98];
  [(MAFlashingLightsProcessorResult *)self mitigationLevel];
  v6 = [v5 numberWithFloat:?];
  v7 = MEMORY[0x1E696AD98];
  [(MAFlashingLightsProcessorResult *)self intensityLevel];
  v8 = [v7 numberWithFloat:?];
  v9 = [v3 stringWithFormat:@"MAFlashingLightsProcessorResult<%p>: Processed: %@, Mitigation: %@, Intensity: %@", self, v4, v6, v8];

  return v9;
}

@end