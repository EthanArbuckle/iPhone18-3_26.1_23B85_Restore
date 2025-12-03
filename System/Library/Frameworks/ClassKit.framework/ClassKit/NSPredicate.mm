@interface NSPredicate
- (NSMapTable)pd_keypathValueMap;
- (id)pd_andCompoundWith:(id)with;
- (id)pd_scopeToKeyPath:(id)path value:(id)value;
@end

@implementation NSPredicate

- (id)pd_andCompoundWith:(id)with
{
  if (with)
  {
    withCopy = with;
    v5 = [NSCompoundPredicate alloc];
    v9[0] = self;
    v9[1] = withCopy;
    v6 = [NSArray arrayWithObjects:v9 count:2];

    selfCopy = [v5 initWithType:1 subpredicates:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pd_scopeToKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  pathCopy = path;
  v8 = [pathCopy stringByAppendingString:@" = %@"];
  valueCopy = [NSPredicate predicateWithFormat:v8, valueCopy];

  v10 = [(NSPredicate *)self pd_filterSubpredicatesForKeyPath:pathCopy];

  if (v10)
  {
    v11 = [v10 pd_andCompoundWith:valueCopy];
  }

  else
  {
    v11 = valueCopy;
  }

  v12 = v11;

  return v12;
}

- (NSMapTable)pd_keypathValueMap
{
  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  [(NSPredicate *)self _populateKeypathValueMap:v3];

  return v3;
}

@end