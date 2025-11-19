@interface MCSChangeUtilities
+ (id)allMessagesInChanges:(id)a3;
+ (id)flagChangesForKey:(id)a3;
+ (id)mergeMessageChanges:(id)a3 withChanges:(id)a4;
@end

@implementation MCSChangeUtilities

+ (id)flagChangesForKey:(id)a3
{
  v3 = a3;
  if (!qword_1006DD1C8)
  {
    v4 = [NSDictionary alloc];
    v5 = [NSNumber numberWithBool:1];
    v6 = [v4 initWithObjectsAndKeys:{v5, MessageIsDeleted, 0, 0}];
    v7 = qword_1006DD1C8;
    qword_1006DD1C8 = v6;

    v8 = [NSDictionary alloc];
    v9 = [NSNumber numberWithBool:1];
    v10 = MessageIsRead;
    v11 = [v8 initWithObjectsAndKeys:{v9, MessageIsRead, 0, 0}];
    v12 = qword_1006DD1D0;
    qword_1006DD1D0 = v11;

    v13 = [NSDictionary alloc];
    v14 = [NSNumber numberWithBool:0];
    v15 = [v13 initWithObjectsAndKeys:{v14, v10, 0, 0}];
    v16 = qword_1006DD1D8;
    qword_1006DD1D8 = v15;

    v17 = [NSDictionary alloc];
    v18 = [NSNumber numberWithBool:1];
    v19 = MFMessageIsFlagged;
    v20 = [v17 initWithObjectsAndKeys:{v18, MFMessageIsFlagged, 0, 0}];
    v21 = qword_1006DD1E0;
    qword_1006DD1E0 = v20;

    v22 = [NSDictionary alloc];
    v23 = [NSNumber numberWithBool:0];
    v24 = [v22 initWithObjectsAndKeys:{v23, v19, 0, 0}];
    v25 = qword_1006DD1E8;
    qword_1006DD1E8 = v24;
  }

  if ([v3 isEqualToString:@"MCSChangeSetDeletedMessages"])
  {
    v26 = &qword_1006DD1C8;
LABEL_13:
    v27 = *v26;
    goto LABEL_14;
  }

  if ([v3 isEqualToString:@"MCSChangeSetReadMessages"])
  {
    v26 = &qword_1006DD1D0;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"MCSChangeSetUnreadMessages"])
  {
    v26 = &qword_1006DD1D8;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"MCSChangeSetFlaggedMessages"])
  {
    v26 = &qword_1006DD1E0;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"MCSChangeSetUnflaggedMessages"])
  {
    v26 = &qword_1006DD1E8;
    goto LABEL_13;
  }

  v27 = 0;
LABEL_14:

  return v27;
}

+ (id)allMessagesInChanges:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableSet alloc] initWithCapacity:0];
  v5 = [v3 objectForKey:@"MCSChangeSetDeletedMessages"];
  [v4 unionSet:v5];

  v6 = [v3 objectForKey:@"MCSChangeSetReadMessages"];
  [v4 unionSet:v6];

  v7 = [v3 objectForKey:@"MCSChangeSetUnreadMessages"];
  [v4 unionSet:v7];

  v8 = [v3 objectForKey:@"MCSChangeSetFlaggedMessages"];
  [v4 unionSet:v8];

  v9 = [v3 objectForKey:@"MCSChangeSetUnflaggedMessages"];
  [v4 unionSet:v9];

  return v4;
}

+ (id)mergeMessageChanges:(id)a3 withChanges:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v8 = [[NSMutableSet alloc] initWithCapacity:0];
  v9 = [v5 objectForKey:@"MCSChangeSetDeletedMessages"];
  [v8 unionSet:v9];

  v10 = [v6 objectForKey:@"MCSChangeSetDeletedMessages"];
  [v8 unionSet:v10];

  if ([v8 count])
  {
    [v7 setObject:v8 forKey:@"MCSChangeSetDeletedMessages"];
  }

  v11 = [[NSMutableSet alloc] initWithCapacity:0];
  v12 = [v5 objectForKey:@"MCSChangeSetReadMessages"];
  [v11 unionSet:v12];

  v13 = [v6 objectForKey:@"MCSChangeSetReadMessages"];
  [v11 unionSet:v13];

  if ([v11 count])
  {
    [v7 setObject:v11 forKey:@"MCSChangeSetReadMessages"];
  }

  v14 = [[NSMutableSet alloc] initWithCapacity:0];
  v15 = [v5 objectForKey:@"MCSChangeSetUnreadMessages"];
  [v14 unionSet:v15];

  v16 = [v6 objectForKey:@"MCSChangeSetUnreadMessages"];
  [v14 unionSet:v16];

  if ([v14 count])
  {
    [v7 setObject:v14 forKey:@"MCSChangeSetUnreadMessages"];
  }

  v17 = [[NSMutableSet alloc] initWithCapacity:0];
  v18 = [v5 objectForKey:@"MCSChangeSetFlaggedMessages"];
  [v17 unionSet:v18];

  v19 = [v6 objectForKey:@"MCSChangeSetFlaggedMessages"];
  [v17 unionSet:v19];

  if ([v17 count])
  {
    [v7 setObject:v17 forKey:@"MCSChangeSetFlaggedMessages"];
  }

  v20 = [[NSMutableSet alloc] initWithCapacity:0];
  v21 = [v5 objectForKey:@"MCSChangeSetUnflaggedMessages"];
  [v20 unionSet:v21];

  v22 = [v6 objectForKey:@"MCSChangeSetUnflaggedMessages"];
  [v20 unionSet:v22];

  if ([v20 count])
  {
    [v7 setObject:v20 forKey:@"MCSChangeSetUnflaggedMessages"];
  }

  return v7;
}

@end