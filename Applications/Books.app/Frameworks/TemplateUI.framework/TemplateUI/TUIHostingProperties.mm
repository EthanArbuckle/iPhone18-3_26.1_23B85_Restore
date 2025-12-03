@interface TUIHostingProperties
- (BOOL)isEqual:(id)equal;
- (TUIHostingProperties)initWithPresentation:(unint64_t)presentation flags:(unint64_t)flags arrowDirection:(unint64_t)direction groupIdentifier:(id)identifier groupPriority:(unint64_t)priority designatedIdentifier:(id)designatedIdentifier;
@end

@implementation TUIHostingProperties

- (TUIHostingProperties)initWithPresentation:(unint64_t)presentation flags:(unint64_t)flags arrowDirection:(unint64_t)direction groupIdentifier:(id)identifier groupPriority:(unint64_t)priority designatedIdentifier:(id)designatedIdentifier
{
  identifierCopy = identifier;
  designatedIdentifierCopy = designatedIdentifier;
  v20.receiver = self;
  v20.super_class = TUIHostingProperties;
  v17 = [(TUIHostingProperties *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_presentation = presentation;
    v17->_flags = flags;
    objc_storeStrong(&v17->_groupIdentifier, identifier);
    v18->_groupPriority = priority;
    v18->_arrowDirection = direction;
    objc_storeStrong(&v18->_designatedIdentifier, designatedIdentifier);
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v6 = self->_presentation == v7[1] && self->_arrowDirection == v7[2] && self->_flags == v7[3] && self->_designatedIdentifier == v7[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end