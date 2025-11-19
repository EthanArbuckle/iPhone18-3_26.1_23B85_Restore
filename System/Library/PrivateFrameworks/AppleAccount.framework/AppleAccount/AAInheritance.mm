@interface AAInheritance
- (AAInheritance)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAInheritance

- (void)encodeWithCoder:(id)a3
{
  beneficiaries = self->_beneficiaries;
  v5 = a3;
  [v5 encodeObject:beneficiaries forKey:@"_beneficiaries"];
  [v5 encodeObject:self->_benefactors forKey:@"_benefactors"];
}

- (AAInheritance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAInheritance *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v8 forKey:@"_beneficiaries"];
    beneficiaries = v5->_beneficiaries;
    v5->_beneficiaries = v12;

    v14 = [v4 decodeObjectOfClasses:v11 forKey:@"_benefactors"];
    benefactors = v5->_benefactors;
    v5->_benefactors = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AAInheritance);
  v5 = [(NSArray *)self->_beneficiaries copy];
  beneficiaries = v4->_beneficiaries;
  v4->_beneficiaries = v5;

  v7 = [(NSArray *)self->_benefactors copy];
  benefactors = v4->_benefactors;
  v4->_benefactors = v7;

  return v4;
}

@end