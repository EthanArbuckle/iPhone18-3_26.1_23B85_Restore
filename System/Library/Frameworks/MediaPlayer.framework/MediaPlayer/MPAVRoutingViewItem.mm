@interface MPAVRoutingViewItem
+ (id)itemWithActionTitle:(id)a3 subtitle:(id)a4 enabled:(BOOL)a5 identifier:(id)a6 image:(id)a7;
+ (id)itemWithLeader:(id)a3 members:(id)a4;
+ (id)itemWithRoute:(id)a3;
+ (id)itemWithVendorSpecificCustomRowTitle:(id)a3 icon:(id)a4 identifier:(id)a5;
+ (id)itemWithVendorSpecificLeader:(id)a3 members:(id)a4;
+ (id)itemWithVendorSpecificRoute:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpandable;
- (BOOL)isPickable;
- (MPAVRoute)mainRoute;
- (NSString)localizedTitle;
- (id)_stateDumpObject;
- (unint64_t)hash;
- (unint64_t)nestedLevel;
@end

@implementation MPAVRoutingViewItem

- (id)_stateDumpObject
{
  type = self->_type;
  if (type > 2)
  {
    if ((type - 3) >= 3)
    {
      if (type != 6)
      {
        if (type != 7)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      vendorSpecificCustomRowIdentifier = self->_vendorSpecificCustomRowIdentifier;
      goto LABEL_18;
    }

LABEL_10:
    v5 = [(NSArray *)self->_routes firstObject];
    v6 = [v5 debugDescription];
    v7 = v6;
    v8 = @"<NONE>";
    if (v6)
    {
      v8 = v6;
    }

    v2 = v8;

    goto LABEL_16;
  }

  if (!type)
  {
    goto LABEL_10;
  }

  if (type == 1)
  {
LABEL_13:
    v9 = [(NSArray *)self->_routes debugDescription];
    v5 = v9;
    v10 = @"<NONE>";
    if (v9)
    {
      v10 = v9;
    }

    v2 = v10;
LABEL_16:

    goto LABEL_21;
  }

  if (type != 2)
  {
    goto LABEL_21;
  }

  vendorSpecificCustomRowIdentifier = self->_actionIdentifier;
LABEL_18:
  if (!vendorSpecificCustomRowIdentifier)
  {
    vendorSpecificCustomRowIdentifier = @"<NONE>";
  }

  v2 = vendorSpecificCustomRowIdentifier;
LABEL_21:

  return v2;
}

- (unint64_t)hash
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_routes;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) routeUID];
        v6 ^= [v9 hash];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return [(NSString *)self->_actionIdentifier hash]^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MPAVRoutingViewItem *)v5 type];
      if (v6 != [(MPAVRoutingViewItem *)self type])
      {
        LOBYTE(self) = 0;
        goto LABEL_11;
      }

      v7 = [(MPAVRoutingViewItem *)self type];
      if (v7 > 7)
      {
        goto LABEL_11;
      }

      if (((1 << v7) & 0xBB) != 0)
      {
        self = self->_routes;
        v8 = [(MPAVRoutingViewItem *)v5 routes];
        LOBYTE(self) = [(MPAVRoutingViewItem *)self isEqual:v8];
LABEL_7:

LABEL_11:
        goto LABEL_12;
      }

      if (v7 == 2)
      {
        actionIdentifier = self->_actionIdentifier;
        v8 = [(MPAVRoutingViewItem *)v5 actionIdentifier];
        if ([(NSString *)actionIdentifier isEqualToString:v8])
        {
          localizedSubtitle = self->_localizedSubtitle;
          v12 = [(MPAVRoutingViewItem *)v5 localizedSubtitle];
          if (localizedSubtitle == v12 || [(NSString *)localizedSubtitle isEqual:v12])
          {
            LODWORD(self) = self->_enabled;
            LOBYTE(self) = self == [(MPAVRoutingViewItem *)v5 enabled];
          }

          else
          {
            LOBYTE(self) = 0;
          }

          goto LABEL_23;
        }
      }

      else
      {
        vendorSpecificCustomRowIdentifier = self->_vendorSpecificCustomRowIdentifier;
        v8 = [(MPAVRoutingViewItem *)v5 vendorSpecificCustomRowIdentifier];
        if ([(NSString *)vendorSpecificCustomRowIdentifier isEqualToString:v8])
        {
          self = self->_localizedTitle;
          v12 = [(MPAVRoutingViewItem *)v5 localizedTitle];
          LOBYTE(self) = [(MPAVRoutingViewItem *)self isEqualToString:v12];
LABEL_23:

          goto LABEL_7;
        }
      }

      LOBYTE(self) = 0;
      goto LABEL_7;
    }

    LOBYTE(self) = 0;
  }

LABEL_12:

  return self & 1;
}

- (unint64_t)nestedLevel
{
  v2 = [(MPAVRoutingViewItem *)self mainRoute];
  v3 = [v2 parentRoute];

  if (v3)
  {
    v3 = 0;
    v4 = v2;
    do
    {
      ++v3;
      v2 = [v4 parentRoute];

      v5 = [v2 parentRoute];

      v4 = v2;
    }

    while (v5);
  }

  return v3;
}

- (BOOL)isPickable
{
  v2 = [(MPAVRoutingViewItem *)self mainRoute];
  v3 = [v2 isPickable];

  return v3;
}

- (BOOL)isExpandable
{
  v3 = [(MPAVRoutingViewItem *)self mainRoute];
  v4 = [v3 subRoutes];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v5 = self->_type == 1;
  }

  return v5;
}

- (MPAVRoute)mainRoute
{
  leader = self->_leader;
  if (leader)
  {
    v3 = leader;
  }

  else
  {
    v3 = [(NSArray *)self->_routes firstObject];
  }

  return v3;
}

- (NSString)localizedTitle
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(MPAVRoutingViewItem *)self type];
  v4 = &stru_1F149ECA8;
  if (v3 > 2)
  {
    if (v3 <= 5)
    {
      if ((v3 - 3) >= 2)
      {
        if (v3 != 5)
        {
          goto LABEL_26;
        }

        v5 = [(MPAVRoutingViewItem *)self routes];
        v6 = [v5 firstObject];
        v7 = [v6 protocolName];
        goto LABEL_11;
      }

LABEL_10:
      v5 = [(MPAVRoutingViewItem *)self routes];
      v6 = [v5 firstObject];
      v7 = [v6 routeName];
LABEL_11:
      v4 = v7;

LABEL_25:
      goto LABEL_26;
    }

    if (v3 != 7)
    {
      if (v3 != 6)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

LABEL_15:
    v8 = MEMORY[0x1E695DF70];
    v9 = [(MPAVRoutingViewItem *)self routes];
    v5 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(MPAVRoutingViewItem *)self routes];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 routeName];

          if (v16)
          {
            v17 = [v15 routeName];
            [v5 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v4 = [v5 componentsJoinedByString:@" + "];
    goto LABEL_25;
  }

  switch(v3)
  {
    case 0:
      goto LABEL_10;
    case 1:
      goto LABEL_15;
    case 2:
LABEL_14:
      v4 = self->_localizedTitle;
      break;
  }

LABEL_26:

  return v4;
}

+ (id)itemWithVendorSpecificCustomRowTitle:(id)a3 icon:(id)a4 identifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(MPAVRoutingViewItem);
  v11 = [v9 copy];

  localizedTitle = v10->_localizedTitle;
  v10->_localizedTitle = v11;

  image = v10->_image;
  v10->_image = v7;
  v14 = v7;

  v15 = [v8 copy];
  vendorSpecificCustomRowIdentifier = v10->_vendorSpecificCustomRowIdentifier;
  v10->_vendorSpecificCustomRowIdentifier = v15;

  v10->_enabled = 1;
  v10->_type = 6;

  return v10;
}

+ (id)itemWithVendorSpecificLeader:(id)a3 members:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MPAVRoutingViewItem);
  v8 = [v6 copy];

  if (![(NSArray *)v8 containsObject:v5])
  {
    v20[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v10 = [v9 arrayByAddingObjectsFromArray:v8];

    v8 = v10;
  }

  routes = v7->_routes;
  v7->_routes = v8;
  v12 = v8;

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  v15 = [v14 localizedStringForKey:@"ROUTING_GROUP_SUBTITLE_COUNT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v16 = [v13 stringWithFormat:v15, -[NSArray count](v12, "count")];
  localizedSubtitle = v7->_localizedSubtitle;
  v7->_localizedSubtitle = v16;

  leader = v7->_leader;
  v7->_leader = v5;

  v7->_enabled = 1;
  v7->_type = 7;

  return v7;
}

+ (id)itemWithVendorSpecificRoute:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MPAVRoutingViewItem);
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  routes = v4->_routes;
  v4->_routes = v5;

  v4->_enabled = 1;
  if ([v3 isGroup])
  {
    v7 = 4;
  }

  else if ([v3 isSubRoute])
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  v4->_type = v7;

  return v4;
}

+ (id)itemWithActionTitle:(id)a3 subtitle:(id)a4 enabled:(BOOL)a5 identifier:(id)a6 image:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(MPAVRoutingViewItem);
  v16 = [v14 copy];

  localizedTitle = v15->_localizedTitle;
  v15->_localizedTitle = v16;

  v18 = [v13 copy];
  localizedSubtitle = v15->_localizedSubtitle;
  v15->_localizedSubtitle = v18;

  v15->_enabled = a5;
  v20 = [v12 copy];

  actionIdentifier = v15->_actionIdentifier;
  v15->_actionIdentifier = v20;

  image = v15->_image;
  v15->_image = v11;

  v15->_type = 2;

  return v15;
}

+ (id)itemWithLeader:(id)a3 members:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MPAVRoutingViewItem);
  v8 = [v6 copy];

  if (![(NSArray *)v8 containsObject:v5])
  {
    v9 = [(NSArray *)v8 arrayByAddingObject:v5];

    v8 = v9;
  }

  routes = v7->_routes;
  v7->_routes = v8;
  v11 = v8;

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  v14 = [v13 localizedStringForKey:@"ROUTING_GROUP_SUBTITLE_COUNT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v15 = [v12 stringWithFormat:v14, -[NSArray count](v11, "count")];
  localizedSubtitle = v7->_localizedSubtitle;
  v7->_localizedSubtitle = v15;

  leader = v7->_leader;
  v7->_leader = v5;

  v7->_enabled = 1;
  v7->_type = 1;

  return v7;
}

+ (id)itemWithRoute:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MPAVRoutingViewItem);
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  routes = v4->_routes;
  v4->_routes = v5;

  v4->_enabled = 1;
  v4->_type = 0;

  return v4;
}

@end