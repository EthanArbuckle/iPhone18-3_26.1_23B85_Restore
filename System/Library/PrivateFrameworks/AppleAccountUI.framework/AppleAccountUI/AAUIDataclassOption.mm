@interface AAUIDataclassOption
- (AAUIDataclassOption)initWithActions:(id)actions;
- (AAUIDataclassOption)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAUIDataclassOption

- (AAUIDataclassOption)initWithActions:(id)actions
{
  actionsCopy = actions;
  v11.receiver = self;
  v11.super_class = AAUIDataclassOption;
  v5 = [(AAUIDataclassOption *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E6959A58] actionWithType:2];
    v7 = [actionsCopy containsObject:v6];

    v8 = [MEMORY[0x1E6959A58] actionWithType:3];
    v9 = [actionsCopy containsObject:v8];

    v5->_editable = v7 & v9;
    v5->_enabled = v9 ^ 1;
  }

  return v5;
}

- (AAUIDataclassOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AAUIDataclassOption;
  v5 = [(AAUIDataclassOption *)&v7 init];
  if (v5)
  {
    v5->_editable = [coderCopy decodeBoolForKey:@"_editable"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"_enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  editable = self->_editable;
  coderCopy = coder;
  [coderCopy encodeBool:editable forKey:@"_editable"];
  [coderCopy encodeBool:self->_enabled forKey:@"_enabled"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_editable];
  v8 = [v3 stringWithFormat:@"<%@: %p>{ enabled: %@, editable: %@ }", v5, self, v6, v7];

  return v8;
}

@end