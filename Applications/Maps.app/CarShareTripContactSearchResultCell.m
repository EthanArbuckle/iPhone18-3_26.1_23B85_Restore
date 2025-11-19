@interface CarShareTripContactSearchResultCell
- (id)_contactNameStringFromContact:(id)a3;
- (id)_subtitleString;
- (void)configureWithMSPSharedTripContact:(id)a3;
- (void)setSharingHandle:(id)a3;
@end

@implementation CarShareTripContactSearchResultCell

- (void)configureWithMSPSharedTripContact:(id)a3
{
  v4 = a3;
  [(CarShareTripContactCell *)self setContactValue:v4];
  v5.receiver = self;
  v5.super_class = CarShareTripContactSearchResultCell;
  [(CarShareTripContactCell *)&v5 configureWithMSPSharedTripContact:v4];
}

- (id)_subtitleString
{
  v9.receiver = self;
  v9.super_class = CarShareTripContactSearchResultCell;
  v3 = [(CarShareTripContactCell *)&v9 _subtitleString];
  if ([(CarShareTripContactCell *)self sharingState])
  {
    v4 = v3;
  }

  else
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:2];
    v6 = [(CarShareTripContactCell *)self sharingHandle];

    if (v6)
    {
      v7 = [(CarShareTripContactCell *)self sharingHandle];
      [v5 addObject:v7];
    }

    if (v3)
    {
      [v5 addObject:v3];
    }

    v4 = [v5 componentsJoinedByString:@" • "];
  }

  return v4;
}

- (id)_contactNameStringFromContact:(id)a3
{
  v3 = a3;
  v4 = [v3 contact];
  if (v4)
  {
    [CNContactFormatter stringFromContact:v4 style:0];
  }

  else
  {
    [v3 displayName];
  }
  v5 = ;

  return v5;
}

- (void)setSharingHandle:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarShareTripContactSearchResultCell;
  [(CarShareTripContactCell *)&v4 setSharingHandle:a3];
  if (![(CarShareTripContactCell *)self sharingState])
  {
    [(CarShareTripContactCell *)self _updateSubtitleLabel];
  }
}

@end