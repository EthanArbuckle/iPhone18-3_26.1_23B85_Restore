@interface TUIHostingProperties
- (BOOL)isEqual:(id)a3;
- (TUIHostingProperties)initWithPresentation:(unint64_t)a3 flags:(unint64_t)a4 arrowDirection:(unint64_t)a5 groupIdentifier:(id)a6 groupPriority:(unint64_t)a7 designatedIdentifier:(id)a8;
@end

@implementation TUIHostingProperties

- (TUIHostingProperties)initWithPresentation:(unint64_t)a3 flags:(unint64_t)a4 arrowDirection:(unint64_t)a5 groupIdentifier:(id)a6 groupPriority:(unint64_t)a7 designatedIdentifier:(id)a8
{
  v15 = a6;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = TUIHostingProperties;
  v17 = [(TUIHostingProperties *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_presentation = a3;
    v17->_flags = a4;
    objc_storeStrong(&v17->_groupIdentifier, a6);
    v18->_groupPriority = a7;
    v18->_arrowDirection = a5;
    objc_storeStrong(&v18->_designatedIdentifier, a8);
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v6 = self->_presentation == v7[1] && self->_arrowDirection == v7[2] && self->_flags == v7[3] && self->_designatedIdentifier == v7[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end