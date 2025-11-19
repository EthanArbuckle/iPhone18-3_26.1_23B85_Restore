@interface NSPredicate
- (NSMapTable)pd_keypathValueMap;
- (id)pd_andCompoundWith:(id)a3;
- (id)pd_scopeToKeyPath:(id)a3 value:(id)a4;
@end

@implementation NSPredicate

- (id)pd_andCompoundWith:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [NSCompoundPredicate alloc];
    v9[0] = self;
    v9[1] = v4;
    v6 = [NSArray arrayWithObjects:v9 count:2];

    v7 = [v5 initWithType:1 subpredicates:v6];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (id)pd_scopeToKeyPath:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 stringByAppendingString:@" = %@"];
  v9 = [NSPredicate predicateWithFormat:v8, v6];

  v10 = [(NSPredicate *)self pd_filterSubpredicatesForKeyPath:v7];

  if (v10)
  {
    v11 = [v10 pd_andCompoundWith:v9];
  }

  else
  {
    v11 = v9;
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