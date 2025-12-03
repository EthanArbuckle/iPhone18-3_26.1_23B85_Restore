@interface BNBannerSourceTemplatePresentableSpecification
- (BNBannerSourceTemplatePresentableSpecification)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BNBannerSourceTemplatePresentableSpecification

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = BNBannerSourceTemplatePresentableSpecification;
  [(BNBannerSourcePresentableSpecification *)&v25 encodeWithBSXPCCoder:coderCopy];
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

    [coderCopy encodeObject:v9 forKey:@"leadingTemplateViewProvider"];
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

    [coderCopy encodeObject:v14 forKey:@"trailingTemplateViewProvider"];
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

    [coderCopy encodeObject:v19 forKey:@"primaryTemplateItemProvider"];
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

    [coderCopy encodeObject:v24 forKey:@"secondaryTemplateItemProvider"];
  }

  if ([(NSString *)self->_presentableAccessibilityIdentifier length])
  {
    [coderCopy encodeObject:self->_presentableAccessibilityIdentifier forKey:@"presentableAccessibilityIdentifier"];
  }
}

- (BNBannerSourceTemplatePresentableSpecification)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = BNBannerSourceTemplatePresentableSpecification;
  v5 = [(BNBannerSourcePresentableSpecification *)&v17 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leadingTemplateViewProvider"];
    leadingTemplateViewProvider = v5->_leadingTemplateViewProvider;
    v5->_leadingTemplateViewProvider = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailingTemplateViewProvider"];
    trailingTemplateViewProvider = v5->_trailingTemplateViewProvider;
    v5->_trailingTemplateViewProvider = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryTemplateItemProvider"];
    primaryTemplateItemProvider = v5->_primaryTemplateItemProvider;
    v5->_primaryTemplateItemProvider = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTemplateItemProvider"];
    secondaryTemplateItemProvider = v5->_secondaryTemplateItemProvider;
    v5->_secondaryTemplateItemProvider = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentableAccessibilityIdentifier"];
    presentableAccessibilityIdentifier = v5->_presentableAccessibilityIdentifier;
    v5->_presentableAccessibilityIdentifier = v14;
  }

  return v5;
}

@end