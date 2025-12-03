@interface CarShareTripContactSearchResultCell
- (id)_contactNameStringFromContact:(id)contact;
- (id)_subtitleString;
- (void)configureWithMSPSharedTripContact:(id)contact;
- (void)setSharingHandle:(id)handle;
@end

@implementation CarShareTripContactSearchResultCell

- (void)configureWithMSPSharedTripContact:(id)contact
{
  contactCopy = contact;
  [(CarShareTripContactCell *)self setContactValue:contactCopy];
  v5.receiver = self;
  v5.super_class = CarShareTripContactSearchResultCell;
  [(CarShareTripContactCell *)&v5 configureWithMSPSharedTripContact:contactCopy];
}

- (id)_subtitleString
{
  v9.receiver = self;
  v9.super_class = CarShareTripContactSearchResultCell;
  _subtitleString = [(CarShareTripContactCell *)&v9 _subtitleString];
  if ([(CarShareTripContactCell *)self sharingState])
  {
    v4 = _subtitleString;
  }

  else
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:2];
    sharingHandle = [(CarShareTripContactCell *)self sharingHandle];

    if (sharingHandle)
    {
      sharingHandle2 = [(CarShareTripContactCell *)self sharingHandle];
      [v5 addObject:sharingHandle2];
    }

    if (_subtitleString)
    {
      [v5 addObject:_subtitleString];
    }

    v4 = [v5 componentsJoinedByString:@" • "];
  }

  return v4;
}

- (id)_contactNameStringFromContact:(id)contact
{
  contactCopy = contact;
  contact = [contactCopy contact];
  if (contact)
  {
    [CNContactFormatter stringFromContact:contact style:0];
  }

  else
  {
    [contactCopy displayName];
  }
  v5 = ;

  return v5;
}

- (void)setSharingHandle:(id)handle
{
  v4.receiver = self;
  v4.super_class = CarShareTripContactSearchResultCell;
  [(CarShareTripContactCell *)&v4 setSharingHandle:handle];
  if (![(CarShareTripContactCell *)self sharingState])
  {
    [(CarShareTripContactCell *)self _updateSubtitleLabel];
  }
}

@end