@interface BNBannerSourcePresentableSpecification
- (BNBannerSourcePresentableSpecification)initWithBSXPCCoder:(id)coder;
- (CGSize)preferredContentSize;
- (NSString)description;
- (UIEdgeInsets)contentOutsets;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BNBannerSourcePresentableSpecification

- (void)encodeWithBSXPCCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = BNBannerSourcePresentableSpecification;
  coderCopy = coder;
  [(BNPresentableIdentification *)&v8 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_contentBehavior forKey:@"contentBehavior"];
  [coderCopy encodeInt64:self->_presentableBehavior forKey:@"presentableBehavior"];
  [coderCopy encodeCGSize:@"preferredContentSize" forKey:{self->_preferredContentSize.width, self->_preferredContentSize.height}];
  v5 = *&self->_contentOutsets.bottom;
  v7[0] = *&self->_contentOutsets.top;
  v7[1] = v5;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{UIEdgeInsets=dddd}"];
  [coderCopy encodeObject:v6 forKey:@"contentOutsets"];
}

- (BNBannerSourcePresentableSpecification)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = BNBannerSourcePresentableSpecification;
  v5 = [(BNPresentableIdentification *)&v17 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *(v5 + 4) = [coderCopy decodeInt64ForKey:@"contentBehavior"];
    *(v5 + 5) = [coderCopy decodeInt64ForKey:@"presentableBehavior"];
    [coderCopy decodeCGSizeForKey:@"preferredContentSize"];
    *(v5 + 6) = v6;
    *(v5 + 7) = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentOutsets"];
    v9 = v8;
    v10 = v5 + 64;
    if (v8)
    {
      [v8 UIEdgeInsetsValue];
      *v10 = v11;
      *(v5 + 9) = v12;
      *(v5 + 10) = v13;
      *(v5 + 11) = v14;
    }

    else
    {
      v15 = *(MEMORY[0x1E69DDCE0] + 16);
      *v10 = *MEMORY[0x1E69DDCE0];
      *(v5 + 5) = v15;
    }
  }

  return v5;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = BNBannerSourcePresentableSpecification;
  v3 = [(BNPresentableIdentification *)&v13 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  contentBehavior = self->_contentBehavior;
  if (contentBehavior > 2)
  {
    v7 = @"[invalid]";
  }

  else
  {
    v7 = off_1E81E4E48[contentBehavior];
  }

  v8 = BNStringFromBNPresentableBehavior(self->_presentableBehavior);
  v9 = NSStringFromCGSize(self->_preferredContentSize);
  v10 = NSStringFromUIEdgeInsets(self->_contentOutsets);
  v11 = [v5 stringWithFormat:@" contentBehavior: %@; presentableType: %@; preferredContentSize: %@; contentOutsets: %@>", v7, v8, v9, v10];;
  [v4 insertString:v11 atIndex:{objc_msgSend(v4, "rangeOfString:options:", @">", 12)}];

  return v4;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentOutsets
{
  top = self->_contentOutsets.top;
  left = self->_contentOutsets.left;
  bottom = self->_contentOutsets.bottom;
  right = self->_contentOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end