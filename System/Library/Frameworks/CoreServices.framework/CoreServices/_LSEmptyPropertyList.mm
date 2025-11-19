@interface _LSEmptyPropertyList
+ (id)sharedInstance;
- (_LSEmptyPropertyList)initWithCoder:(id)a3;
@end

@implementation _LSEmptyPropertyList

+ (id)sharedInstance
{
  if (+[_LSEmptyPropertyList sharedInstance]::once != -1)
  {
    +[_LSEmptyPropertyList sharedInstance];
  }

  v3 = +[_LSEmptyPropertyList sharedInstance]::result;

  return v3;
}

- (_LSEmptyPropertyList)initWithCoder:(id)a3
{
  v4 = +[_LSEmptyPropertyList sharedInstance];

  return v4;
}

@end