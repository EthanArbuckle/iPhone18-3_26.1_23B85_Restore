@interface AXCCExpandableButtonOption
- (id)description;
@end

@implementation AXCCExpandableButtonOption

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = [(AXCCExpandableButtonOption *)self identifier];
  v6 = v5;
  if (self->_supportsAnimation)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p identifer=%@ packageName=%@ title=%@ animated=%@>", v4, self, v5, self->_packageName, self->_title, v7];

  return v8;
}

@end