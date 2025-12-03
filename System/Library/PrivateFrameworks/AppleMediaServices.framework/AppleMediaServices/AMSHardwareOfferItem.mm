@interface AMSHardwareOfferItem
+ (BOOL)shouldBadgeAppWithItems:(id)items;
+ (BOOL)shouldBadgeRowWithItems:(id)items;
+ (id)latestExpirationDateFromItems:(id)items;
- (AMSHardwareOfferItem)initWithAMSFollowUpItem:(id)item;
- (AMSHardwareOfferItem)initWithCoder:(id)coder;
- (AMSHardwareOfferItem)initWithFollowUpItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSHardwareOfferItem

- (AMSHardwareOfferItem)initWithAMSFollowUpItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = AMSHardwareOfferItem;
  v5 = [(AMSHardwareOfferItem *)&v12 init];
  if (v5)
  {
    backingIdentifier = [itemCopy backingIdentifier];
    v7 = [backingIdentifier copy];
    backingIdentifier = v5->_backingIdentifier;
    v5->_backingIdentifier = v7;

    expirationDate = [itemCopy expirationDate];
    expiration = v5->_expiration;
    v5->_expiration = expirationDate;

    v5->_omitBadge = ([itemCopy displayStyle] & 0x10) != 0;
    v5->_omitAppBadge = ([itemCopy displayStyle] & 0x20) != 0;
  }

  return v5;
}

- (AMSHardwareOfferItem)initWithFollowUpItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = AMSHardwareOfferItem;
  v5 = [(AMSHardwareOfferItem *)&v12 init];
  if (v5)
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    v7 = [uniqueIdentifier copy];
    backingIdentifier = v5->_backingIdentifier;
    v5->_backingIdentifier = v7;

    expirationDate = [itemCopy expirationDate];
    expiration = v5->_expiration;
    v5->_expiration = expirationDate;

    v5->_omitBadge = ([itemCopy displayStyle] & 0x10) != 0;
    v5->_omitAppBadge = ([itemCopy displayStyle] & 0x20) != 0;
  }

  return v5;
}

+ (BOOL)shouldBadgeAppWithItems:(id)items
{
  allValues = [items allValues];
  v4 = [allValues ams_anyWithTest:&__block_literal_global_68];

  return v4;
}

uint64_t __48__AMSHardwareOfferItem_shouldBadgeAppWithItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 omitBadge])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 omitAppBadge] ^ 1;
  }

  return v3;
}

+ (BOOL)shouldBadgeRowWithItems:(id)items
{
  allValues = [items allValues];
  v4 = [allValues ams_anyWithTest:&__block_literal_global_12_1];

  return v4;
}

+ (id)latestExpirationDateFromItems:(id)items
{
  itemsCopy = items;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AMSHardwareOfferItem_latestExpirationDateFromItems___block_invoke;
  v6[3] = &unk_1E73B8660;
  v6[4] = &v7;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__AMSHardwareOfferItem_latestExpirationDateFromItems___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 expiration];
  if (v4)
  {
    v5 = v4;
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      v6 = [v11 expiration];
      v7 = [v6 compare:*(*(*(a1 + 32) + 8) + 40)];

      if (v7 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = [v11 expiration];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

LABEL_7:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backingIdentifier = [(AMSHardwareOfferItem *)self backingIdentifier];
  [coderCopy encodeObject:backingIdentifier forKey:@"kAMSHardwareOfferItemIdentifierKey"];

  expiration = [(AMSHardwareOfferItem *)self expiration];
  [coderCopy encodeObject:expiration forKey:@"kAMSHardwareOfferItemExpirationKey"];

  [coderCopy encodeBool:-[AMSHardwareOfferItem omitBadge](self forKey:{"omitBadge"), @"kAMSHardwareOfferItemOmitBadgeKey"}];
  [coderCopy encodeBool:-[AMSHardwareOfferItem omitAppBadge](self forKey:{"omitAppBadge"), @"kAMSHardwareOfferItemOmitAppBadgeKey"}];
}

- (AMSHardwareOfferItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSHardwareOfferItem;
  v5 = [(AMSHardwareOfferItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAMSHardwareOfferItemIdentifierKey"];
    backingIdentifier = v5->_backingIdentifier;
    v5->_backingIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAMSHardwareOfferItemExpirationKey"];
    expiration = v5->_expiration;
    v5->_expiration = v8;

    v5->_omitBadge = [coderCopy decodeBoolForKey:@"kAMSHardwareOfferItemOmitBadgeKey"];
    v5->_omitAppBadge = [coderCopy decodeBoolForKey:@"kAMSHardwareOfferItemOmitAppBadgeKey"];
  }

  return v5;
}

@end