@interface RCShareMemoHelper
+ (id)customActivitiesForShareableCompositions:(id)a3;
+ (id)customActivityTypes;
+ (id)shareableCompositionsFromCompositions:(id)a3;
+ (id)unsupportedActivityTypes;
@end

@implementation RCShareMemoHelper

+ (id)unsupportedActivityTypes
{
  if (qword_1002D7118 != -1)
  {
    sub_1001BAA28();
  }

  v3 = qword_1002D7110;

  return v3;
}

+ (id)customActivitiesForShareableCompositions:(id)a3
{
  v3 = a3;
  v4 = [[_TtC10VoiceMemos24RCCopyTranscriptActivity alloc] initWithShareableCompositions:v3];
  v5 = [(RCUIActivity *)[RCDuplicateActivity alloc] initWithShareableCompositions:v3];
  v6 = [(RCUIActivity *)[RCFavoriteActionActivity alloc] initWithShareableCompositions:v3];
  v7 = [(RCUIActivity *)[RCMoveToFolderActivity alloc] initWithShareableCompositions:v3];

  if ([(RCCopyTranscriptActivity *)v4 shouldShowTranscriptionActivity])
  {
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v8 = &v15;
    v9 = 4;
  }

  else
  {
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v8 = &v12;
    v9 = 3;
  }

  v10 = [NSArray arrayWithObjects:v8 count:v9, v12, v13, v14, v15, v16, v17, v18];

  return v10;
}

+ (id)customActivityTypes
{
  v2 = +[_TtC10VoiceMemos24RCCopyTranscriptActivity RCActivityTypeCopyTranscript];
  v5[0] = v2;
  v5[1] = @"RCActivityTypeDuplicate";
  v5[2] = @"RCActivityTypeFavorite";
  v5[3] = @"RCActivityTypeMoveToFolder";
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

+ (id)shareableCompositionsFromCompositions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 count];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [RCShareableComposition alloc];
        v13 = [(RCShareableComposition *)v12 initWithComposition:v11, v16];
        v14 = v13;
        if (v5 >= 2)
        {
          [(RCShareableComposition *)v13 setCustomSubject:&stru_100295BB8];
        }

        [v4 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

@end