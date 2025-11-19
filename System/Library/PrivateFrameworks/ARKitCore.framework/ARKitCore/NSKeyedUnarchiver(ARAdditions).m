@interface NSKeyedUnarchiver(ARAdditions)
+ (id)ar_unarchivedObjectOfClass:()ARAdditions fromData:error:;
+ (id)ar_unarchivedObjectOfClasses:()ARAdditions fromData:error:;
@end

@implementation NSKeyedUnarchiver(ARAdditions)

+ (id)ar_unarchivedObjectOfClasses:()ARAdditions fromData:error:
{
  v8 = a3;
  v9 = a4;
  v10 = [[a1 alloc] initForReadingFromData:v9 error:a5];
  if (v10)
  {
    v11 = v10;
    [v10 setRequiresSecureCoding:1];
    [v11 setDecodingFailurePolicy:0];
    v12 = [v11 decodeTopLevelObjectOfClasses:v8 forKey:*MEMORY[0x1E696A508] error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)ar_unarchivedObjectOfClass:()ARAdditions fromData:error:
{
  v8 = MEMORY[0x1E695DFD8];
  v9 = a4;
  v10 = [v8 setWithObject:a3];
  v11 = [a1 ar_unarchivedObjectOfClasses:v10 fromData:v9 error:a5];

  return v11;
}

@end