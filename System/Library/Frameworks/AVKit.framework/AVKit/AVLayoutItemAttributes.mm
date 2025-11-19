@interface AVLayoutItemAttributes
- (AVLayoutItemAttributes)displayPartnerAttributes;
- (AVLayoutItemAttributes)init;
- (AVLayoutItemAttributes)nextAttributesInPriorityOrder;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)isEqual:(id)a3;
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation AVLayoutItemAttributes

- (AVLayoutItemAttributes)nextAttributesInPriorityOrder
{
  WeakRetained = objc_loadWeakRetained(&self->_nextAttributesInPriorityOrder);

  return WeakRetained;
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumSize
{
  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVLayoutItemAttributes)displayPartnerAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_displayPartnerAttributes);

  return WeakRetained;
}

- (id)debugDescription
{
  v10.receiver = self;
  v10.super_class = AVLayoutItemAttributes;
  v3 = [(AVLayoutItemAttributes *)&v10 debugDescription];
  v4 = [v3 mutableCopy];

  v5 = [(AVLayoutItemAttributes *)self accessibilityIdentifier];
  [(AVLayoutItemAttributes *)self minimumSize];
  v6 = NSStringFromSize(v12);
  v7 = @"NO";
  if ([(AVLayoutItemAttributes *)self isCollapsed])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(AVLayoutItemAttributes *)self isIncluded])
  {
    v7 = @"YES";
  }

  [v4 appendFormat:@"{accessibilityID: %@ minSize: %@ isCollapsed: %@ isIncluded: %@ displayPriority: %ld}", v5, v6, v8, v7, -[AVLayoutItemAttributes displayPriority](self, "displayPriority")];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(AVLayoutItemAttributes *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVLayoutItemAttributes;
  v5 = [(AVLayoutItemAttributes *)&v9 isEqual:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 uniqueIdentifier];
    v7 = [(AVLayoutItemAttributes *)self uniqueIdentifier];
    v5 = [v6 isEqualToString:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVLayoutItemAttributes allocWithZone:?]];
  [(AVLayoutItemAttributes *)self minimumSize];
  [(AVLayoutItemAttributes *)v4 setMinimumSize:?];
  [(AVLayoutItemAttributes *)self maximumSize];
  [(AVLayoutItemAttributes *)v4 setMaximumSize:?];
  [(AVLayoutItemAttributes *)self trailingInterItemSpace];
  [(AVLayoutItemAttributes *)v4 setTrailingInterItemSpace:?];
  [(AVLayoutItemAttributes *)v4 setCollapsed:[(AVLayoutItemAttributes *)self isCollapsed]];
  [(AVLayoutItemAttributes *)v4 setIncluded:[(AVLayoutItemAttributes *)self isIncluded]];
  v5 = [(AVLayoutItemAttributes *)self uniqueIdentifier];
  [(AVLayoutItemAttributes *)v4 setUniqueIdentifier:v5];

  [(AVLayoutItemAttributes *)v4 setHasFlexibleContentSize:[(AVLayoutItemAttributes *)self hasFlexibleContentSize]];
  [(AVLayoutItemAttributes *)v4 setDisplayPriority:[(AVLayoutItemAttributes *)self displayPriority]];
  v6 = [(AVLayoutItemAttributes *)self accessibilityIdentifier];
  [(AVLayoutItemAttributes *)v4 setAccessibilityIdentifier:v6];

  [(AVLayoutItemAttributes *)v4 setPrefersSecondaryMaterialOverlay:[(AVLayoutItemAttributes *)self prefersSecondaryMaterialOverlay]];
  v7 = [(AVLayoutItemAttributes *)self displayPartnerAttributes];
  [(AVLayoutItemAttributes *)v4 setDisplayPartnerAttributes:v7];

  v8 = [(AVLayoutItemAttributes *)self nextAttributesInLayoutOrder];
  [(AVLayoutItemAttributes *)v4 setNextAttributesInLayoutOrder:v8];

  v9 = [(AVLayoutItemAttributes *)self nextAttributesInPriorityOrder];
  [(AVLayoutItemAttributes *)v4 setNextAttributesInPriorityOrder:v9];

  [(AVLayoutItemAttributes *)v4 setCanOverflowToAuxiliaryMenu:[(AVLayoutItemAttributes *)self canOverflowToAuxiliaryMenu]];
  [(AVLayoutItemAttributes *)v4 setCanSubstituteOtherAttributes:[(AVLayoutItemAttributes *)self canSubstituteOtherAttributes]];
  return v4;
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVLayoutItemAttributes *)self isCollapsed])
  {
    return 1;
  }

  else
  {
    return ![(AVLayoutItemAttributes *)self isIncluded];
  }
}

- (AVLayoutItemAttributes)init
{
  v9.receiver = self;
  v9.super_class = AVLayoutItemAttributes;
  v2 = [(AVLayoutItemAttributes *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F060];
    *(v2 + 72) = *MEMORY[0x1E695F060];
    *(v2 + 88) = v4;
    *(v2 + 4) = 0;
    *(v2 + 13) = 256;
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 globallyUniqueString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = v6;

    v3->_hasFlexibleContentSize = 0;
    v3->_displayPriority = 0;
    objc_storeWeak(&v3->_displayPartnerAttributes, 0);
    v3->_canOverflowToAuxiliaryMenu = 0;
    v3->_canSubstituteOtherAttributes = 0;
  }

  return v3;
}

@end