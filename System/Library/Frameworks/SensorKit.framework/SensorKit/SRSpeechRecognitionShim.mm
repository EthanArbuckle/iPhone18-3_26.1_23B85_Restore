@interface SRSpeechRecognitionShim
- (SRSpeechRecognitionShim)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
@end

@implementation SRSpeechRecognitionShim

- (SRSpeechRecognitionShim)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v5 = [[SRSpeechMetrics alloc] initWithBinarySampleRepresentation:representation metadata:metadata timestamp:timestamp];
  speechRecognition = [(SRSpeechMetrics *)v5 speechRecognition];

  return speechRecognition;
}

@end