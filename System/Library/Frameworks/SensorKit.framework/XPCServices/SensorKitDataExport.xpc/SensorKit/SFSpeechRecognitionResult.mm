@interface SFSpeechRecognitionResult
- (id)sr_dictionaryRepresentation;
@end

@implementation SFSpeechRecognitionResult

- (id)sr_dictionaryRepresentation
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  transcriptions = [(SFSpeechRecognitionResult *)self transcriptions];
  v5 = [(NSArray *)transcriptions countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(transcriptions);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "sr_dictionaryRepresentation")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)transcriptions countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  v14[0] = @"redactedBestTranscription";
  v15[0] = [(SFTranscription *)[(SFSpeechRecognitionResult *)self bestTranscription] sr_dictionaryRepresentation];
  v15[1] = v3;
  v14[1] = @"redactedTranscriptions";
  v14[2] = @"final";
  v15[2] = [NSNumber numberWithBool:[(SFSpeechRecognitionResult *)self isFinal]];
  v14[3] = @"speechRecognitionMetadata";
  v15[3] = [(SFSpeechRecognitionMetadata *)[(SFSpeechRecognitionResult *)self speechRecognitionMetadata] sr_dictionaryRepresentation];
  return [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
}

@end