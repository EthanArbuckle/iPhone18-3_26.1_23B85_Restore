@interface INObjectWithTypedObject
@end

@implementation INObjectWithTypedObject

void *___INObjectWithTypedObject_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = MEMORY[0x1E695DEC8];
    v5 = _INObjectWithTypedObject(v3, *(a1 + 32));
    v6 = 0;
    v7 = v3;
  }

  else
  {

    v7 = 0;
    v5 = 0;
    v4 = MEMORY[0x1E695DEC8];
    v6 = 1;
  }

  v8 = [v4 if_arrayWithObjectIfNonNil:v5];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  if ((v6 & 1) == 0)
  {
  }

  return v10;
}

@end