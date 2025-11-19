@interface FPUIAuthenticationRowDescriptor
- (FPUIAuthenticationRowDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FPUIAuthenticationRowDescriptor

- (FPUIAuthenticationRowDescriptor)init
{
  v9.receiver = self;
  v9.super_class = FPUIAuthenticationRowDescriptor;
  v2 = [(FPUIAuthenticationRowDescriptor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_rowHeight = *MEMORY[0x277D76F30];
    v2->_shouldHighlight = 1.0;
    v4 = [objc_opt_class() defaultCellClass];
    cellClass = v3->_cellClass;
    v3->_cellClass = v4;

    v6 = [objc_opt_class() defaultCellReuseIdentifier];
    cellReuseIdentifier = v3->_cellReuseIdentifier;
    v3->_cellReuseIdentifier = v6;

    v3->_cellSelectionStyle = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  *(v4 + 8) = self->_rowHeight;
  *(v4 + 16) = self->_shouldHighlight;
  v5 = [self->_selectionHandler copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(objc_class *)self->_cellClass copy];
  v8 = *(v4 + 40);
  *(v4 + 40) = v7;

  v9 = [(NSString *)self->_cellReuseIdentifier copy];
  v10 = *(v4 + 48);
  *(v4 + 48) = v9;

  v11 = [self->_cellCustomizationHandler copy];
  v12 = *(v4 + 56);
  *(v4 + 56) = v11;

  v13 = [self->_cellWillDisplayHandler copy];
  v14 = *(v4 + 64);
  *(v4 + 64) = v13;

  return v4;
}

@end