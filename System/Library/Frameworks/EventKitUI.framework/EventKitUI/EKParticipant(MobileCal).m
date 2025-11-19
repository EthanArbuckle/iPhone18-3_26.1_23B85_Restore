@interface EKParticipant(MobileCal)
- (id)commentLabelString;
@end

@implementation EKParticipant(MobileCal)

- (id)commentLabelString
{
  v2 = [a1 inviterNameString];
  if ([v2 length])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:@"Invited by %@" value:&stru_1F4EF6790 table:0];
    v6 = [v3 localizedStringWithFormat:v5, v2];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E6993410];
  v8 = [a1 comment];
  v9 = [v7 stringWithAutoCommentRemoved:v8];

  if (v9 && [v9 length])
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];
    v13 = [v10 localizedStringWithFormat:v12, v9];

    if (v6)
    {
      v14 = [v6 stringByAppendingFormat:@"\n%@", v13];

      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  return v6;
}

@end