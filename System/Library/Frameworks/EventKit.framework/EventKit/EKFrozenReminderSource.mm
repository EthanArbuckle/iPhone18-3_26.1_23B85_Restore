@interface EKFrozenReminderSource
- (NSString)sourceIdentifier;
- (id)externalID;
- (id)meltedObjectInStore:(id)store;
- (id)title;
- (int64_t)sourceTypeRaw;
@end

@implementation EKFrozenReminderSource

- (id)meltedObjectInStore:(id)store
{
  storeCopy = store;
  v5 = [storeCopy eventSourceForReminderSource:self];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = EKFrozenReminderSource;
    v7 = [(EKPersistentObject *)&v10 meltedObjectInStore:storeCopy];
  }

  v8 = v7;

  return v8;
}

- (NSString)sourceIdentifier
{
  remAccount = [(EKFrozenReminderSource *)self remAccount];
  objectID = [remAccount objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (int64_t)sourceTypeRaw
{
  remAccount = [(EKFrozenReminderSource *)self remAccount];
  type = [remAccount type];

  if (type > 7)
  {
    return 2;
  }

  else
  {
    return qword_1A81C3EE0[type];
  }
}

- (id)title
{
  remAccount = [(EKFrozenReminderSource *)self remAccount];
  name = [remAccount name];

  return name;
}

- (id)externalID
{
  remAccount = [(EKFrozenReminderSource *)self remAccount];
  externalIdentifier = [remAccount externalIdentifier];

  return externalIdentifier;
}

@end