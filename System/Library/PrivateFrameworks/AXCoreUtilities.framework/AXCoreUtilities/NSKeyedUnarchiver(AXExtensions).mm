@interface NSKeyedUnarchiver(AXExtensions)
+ (id)secureUnarchiveData:()AXExtensions withExpectedClass:otherAllowedClasses:;
@end

@implementation NSKeyedUnarchiver(AXExtensions)

+ (id)secureUnarchiveData:()AXExtensions withExpectedClass:otherAllowedClasses:
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:&v16];
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{a4, 0}];
    v11 = v10;
    if (v8)
    {
      v12 = [v10 setByAddingObjectsFromSet:v8];

      v11 = v12;
    }

    v13 = [v9 decodeObjectOfClasses:v11 forKey:*MEMORY[0x1E696A508]];
    v14 = __UIAccessibilityCastAsClass(a4, v13, 1, 0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end