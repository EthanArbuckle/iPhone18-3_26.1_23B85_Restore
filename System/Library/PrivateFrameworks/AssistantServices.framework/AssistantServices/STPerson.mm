@interface STPerson
- (NSString)description;
- (STPerson)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STPerson

- (STPerson)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STPerson;
  v5 = [(STSiriModelObject *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_contactHandles"];
    contactHandles = v5->_contactHandles;
    v5->_contactHandles = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STPerson;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contactHandles forKey:{@"_contactHandles", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_fullName forKey:@"_fullName"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STPerson *)self fullName];
  v6 = [(STPerson *)self contactHandles];
  v7 = [v3 stringWithFormat:@"<%@: %p fullName=%@ contactHandles=%@>", v4, self, v5, v6];;

  return v7;
}

@end