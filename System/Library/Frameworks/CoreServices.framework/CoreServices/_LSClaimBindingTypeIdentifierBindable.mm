@interface _LSClaimBindingTypeIdentifierBindable
- (BOOL)isEqual:(id)equal;
- (_LSClaimBindingTypeIdentifierBindable)initWithCoder:(id)coder;
- (id)typeRecordWithError:(id *)error;
- (void)initWithTypeIdentifier:(void *)identifier;
@end

@implementation _LSClaimBindingTypeIdentifierBindable

- (void)initWithTypeIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    v7.receiver = identifier;
    v7.super_class = _LSClaimBindingTypeIdentifierBindable;
    identifier = objc_msgSendSuper2(&v7, sel__initProtected);
    if (identifier)
    {
      v4 = [v3 copy];
      v5 = identifier[1];
      identifier[1] = v4;
    }
  }

  return identifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_typeIdentifier isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LSClaimBindingTypeIdentifierBindable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
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

- (id)typeRecordWithError:(id *)error
{
  v4 = [UTTypeRecord typeRecordWithIdentifier:self->_typeIdentifier];
  v5 = v4;
  if (error && !v4)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "[_LSClaimBindingTypeIdentifierBindable typeRecordWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimBindingConfiguration.mm", 435);
  }

  return v5;
}

@end