@interface BNBannerSourceTemplatePresentableSpecification
- (BNBannerSourceTemplatePresentableSpecification)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation BNBannerSourceTemplatePresentableSpecification

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BNBannerSourceTemplatePresentableSpecification;
  [(BNBannerSourcePresentableSpecification *)&v25 encodeWithBSXPCCoder:v4];
  leadingTemplateViewProvider = self->_leadingTemplateViewProvider;
  if (leadingTemplateViewProvider)
  {
    v6 = objc_opt_class();
    v7 = leadingTemplateViewProvider;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v4 encodeObject:v9 forKey:@"leadingTemplateViewProvider"];
  }

  trailingTemplateViewProvider = self->_trailingTemplateViewProvider;
  if (trailingTemplateViewProvider)
  {
    v11 = objc_opt_class();
    v12 = trailingTemplateViewProvider;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v4 encodeObject:v14 forKey:@"trailingTemplateViewProvider"];
  }

  primaryTemplateItemProvider = self->_primaryTemplateItemProvider;
  if (primaryTemplateItemProvider)
  {
    v16 = objc_opt_class();
    v17 = primaryTemplateItemProvider;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v4 encodeObject:v19 forKey:@"primaryTemplateItemProvider"];
  }

  secondaryTemplateItemProvider = self->_secondaryTemplateItemProvider;
  if (secondaryTemplateItemProvider)
  {
    v21 = objc_opt_class();
    v22 = secondaryTemplateItemProvider;
    if (v21)
    {
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    [v4 encodeObject:v24 forKey:@"secondaryTemplateItemProvider"];
  }

  if ([(NSString *)self->_presentableAccessibilityIdentifier length])
  {
    [v4 encodeObject:self->_presentableAccessibilityIdentifier forKey:@"presentableAccessibilityIdentifier"];
  }
}

- (BNBannerSourceTemplatePresentableSpecification)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BNBannerSourceTemplatePresentableSpecification;
  v5 = [(BNBannerSourcePresentableSpecification *)&v17 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leadingTemplateViewProvider"];
    leadingTemplateViewProvider = v5->_leadingTemplateViewProvider;
    v5->_leadingTemplateViewProvider = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailingTemplateViewProvider"];
    trailingTemplateViewProvider = v5->_trailingTemplateViewProvider;
    v5->_trailingTemplateViewProvider = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryTemplateItemProvider"];
    primaryTemplateItemProvider = v5->_primaryTemplateItemProvider;
    v5->_primaryTemplateItemProvider = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTemplateItemProvider"];
    secondaryTemplateItemProvider = v5->_secondaryTemplateItemProvider;
    v5->_secondaryTemplateItemProvider = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentableAccessibilityIdentifier"];
    presentableAccessibilityIdentifier = v5->_presentableAccessibilityIdentifier;
    v5->_presentableAccessibilityIdentifier = v14;
  }

  return v5;
}

@end