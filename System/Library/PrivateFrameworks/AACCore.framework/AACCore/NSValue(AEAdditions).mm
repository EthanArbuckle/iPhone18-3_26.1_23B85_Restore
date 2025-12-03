@interface NSValue(AEAdditions)
+ (id)ae_valueFromData:()AEAdditions ofObjCType:;
- (id)ae_dataRepresentation;
@end

@implementation NSValue(AEAdditions)

- (id)ae_dataRepresentation
{
  sizep = 0;
  NSGetSizeAndAlignment([self objCType], &sizep, 0);
  v2 = sizep;
  v3 = malloc_type_malloc(sizep, 0xE93EACCAuLL);
  [self getValue:v3];
  v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:v2 freeWhenDone:1];

  return v4;
}

+ (id)ae_valueFromData:()AEAdditions ofObjCType:
{
  v5 = a3;
  v6 = [v5 length];
  sizep = 0;
  NSGetSizeAndAlignment(a4, &sizep, 0);
  v7 = 0;
  if (v6 == sizep)
  {
    v7 = [MEMORY[0x277CCAE60] valueWithBytes:objc_msgSend(v5 objCType:{"bytes"), a4}];
  }

  return v7;
}

@end