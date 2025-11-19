@interface _LSClaimBindingTypeIdentifierBindable
- (BOOL)isEqual:(id)a3;
- (_LSClaimBindingTypeIdentifierBindable)initWithCoder:(id)a3;
- (id)typeRecordWithError:(id *)a3;
- (void)initWithTypeIdentifier:(void *)a1;
@end

@implementation _LSClaimBindingTypeIdentifierBindable

- (void)initWithTypeIdentifier:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _LSClaimBindingTypeIdentifierBindable;
    a1 = objc_msgSendSuper2(&v7, sel__initProtected);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_typeIdentifier isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LSClaimBindingTypeIdentifierBindable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
  if (v5)
  {
    v6 = [(_LSClaimBindingTypeIdentifierBindable *)self initWithTypeIdentifier:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)typeRecordWithError:(id *)a3
{
  v4 = [UTTypeRecord typeRecordWithIdentifier:self->_typeIdentifier];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "[_LSClaimBindingTypeIdentifierBindable typeRecordWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimBindingConfiguration.mm", 435);
  }

  return v5;
}

@end