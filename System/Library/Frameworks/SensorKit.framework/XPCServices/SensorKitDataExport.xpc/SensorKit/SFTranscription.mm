@interface SFTranscription
- (id)sr_dictionaryRepresentation;
@end

@implementation SFTranscription

- (id)sr_dictionaryRepresentation
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  segments = [(SFTranscription *)self segments];
  v5 = [(NSArray *)segments countByEnumeratingWithState:&v10 objects:v16 count:16];
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
          objc_enumerationMutation(segments);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "sr_dictionaryRepresentation")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)segments countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  v14 = @"segments";
  v15 = v3;
  return [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
}

@end