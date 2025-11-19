@interface EKFrozenReminderSource
- (NSString)sourceIdentifier;
- (id)externalID;
- (id)meltedObjectInStore:(id)a3;
- (id)title;
- (int64_t)sourceTypeRaw;
@end

@implementation EKFrozenReminderSource

- (id)meltedObjectInStore:(id)a3
{
  v4 = a3;
  v5 = [v4 eventSourceForReminderSource:self];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = EKFrozenReminderSource;
    v7 = [(EKPersistentObject *)&v10 meltedObjectInStore:v4];
  }

  v8 = v7;

  return v8;
}

- (NSString)sourceIdentifier
{
  v2 = [(EKFrozenReminderSource *)self remAccount];
  v3 = [v2 objectID];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (int64_t)sourceTypeRaw
{
  v2 = [(EKFrozenReminderSource *)self remAccount];
  v3 = [v2 type];

  if (v3 > 7)
  {
    return 2;
  }

  else
  {
    return qword_1A81C3EE0[v3];
  }
}

- (id)title
{
  v2 = [(EKFrozenReminderSource *)self remAccount];
  v3 = [v2 name];

  return v3;
}

- (id)externalID
{
  v2 = [(EKFrozenReminderSource *)self remAccount];
  v3 = [v2 externalIdentifier];

  return v3;
}

@end