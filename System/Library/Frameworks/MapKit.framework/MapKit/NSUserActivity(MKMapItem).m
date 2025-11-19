@interface NSUserActivity(MKMapItem)
- (id)mapItem;
- (void)setMapItem:()MKMapItem;
@end

@implementation NSUserActivity(MKMapItem)

- (void)setMapItem:()MKMapItem
{
  v7 = a3;
  v4 = [a1 _internalUserActivity];
  v5 = [v4 objectForIdentifier:@"UAMKMapItemPayload"];
  v6 = v5;
  if (v7)
  {
    [v4 setPayloadIdentifier:@"UAMKMapItemPayload" object:v7 withBlock:&__block_literal_global_45196];
    [a1 _mapkit_populateFieldsForDonationOfMapItem:v7];
  }

  else
  {
    if (v5)
    {
      [v4 setPayloadIdentifier:@"UAMKMapItemPayload" object:0 withBlock:0];
    }

    [a1 _mapkit_clearMapItemDonationFields];
  }
}

- (id)mapItem
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [a1 _internalUserActivity];
  v2 = [v1 objectForIdentifier:@"UAMKMapItemPayload"];
  if (!v2)
  {
    v3 = [v1 payloadForIdentifier:@"UAMKMapItemPayload"];
    if (v3)
    {
      v9 = 0;
      v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v9];
      v5 = v9;
      if (v4)
      {
        v2 = [MKMapItem mapItemWithDictionary:v4];
        if (!v2)
        {
          v6 = MKGetMKDefaultLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEFAULT, "Failed to initialize map item from encoded data.", buf, 2u);
          }
        }

        [v1 setPayload:v3 object:v2 identifier:@"UAMKMapItemPayload"];
      }

      else
      {
        v7 = MKGetMKDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v11 = v5;
          _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Failed to deserialize map item: %{public}@", buf, 0xCu);
        }

        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end