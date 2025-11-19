@interface SRSpeechRecognitionShim
- (SRSpeechRecognitionShim)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
@end

@implementation SRSpeechRecognitionShim

- (SRSpeechRecognitionShim)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v5 = [[SRSpeechMetrics alloc] initWithBinarySampleRepresentation:a3 metadata:a4 timestamp:a5];
  v6 = [(SRSpeechMetrics *)v5 speechRecognition];

  return v6;
}

@end