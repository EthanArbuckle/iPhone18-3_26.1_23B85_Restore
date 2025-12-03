@interface CNContactPosterNameComponents
- (CNContactPosterNameComponents)init;
- (id)debugDescription;
@end

@implementation CNContactPosterNameComponents

- (CNContactPosterNameComponents)init
{
  v8.receiver = self;
  v8.super_class = CNContactPosterNameComponents;
  v2 = [(CNContactPosterNameComponents *)&v8 init];
  v3 = v2;
  if (v2)
  {
    firstNameComponent = v2->_firstNameComponent;
    v2->_firstNameComponent = &stru_1F094DAB0;

    secondNameComponent = v3->_secondNameComponent;
    v3->_secondNameComponent = 0;

    *&v3->_emphasizedNameComponentIndex = xmmword_19567B150;
    v6 = v3;
  }

  return v3;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"first" object:self->_firstNameComponent];
  v5 = [v3 appendName:@"second" object:self->_secondNameComponent];
  v6 = [v3 appendName:@"emphasis" integerValue:self->_emphasizedNameComponentIndex];
  v7 = [v3 appendName:@"singleNameComponentIndex" integerValue:self->_singleNameComponentIndex];
  build = [v3 build];

  return build;
}

@end