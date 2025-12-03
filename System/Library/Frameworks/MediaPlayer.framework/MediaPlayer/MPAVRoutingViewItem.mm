@interface MPAVRoutingViewItem
+ (id)itemWithActionTitle:(id)title subtitle:(id)subtitle enabled:(BOOL)enabled identifier:(id)identifier image:(id)image;
+ (id)itemWithLeader:(id)leader members:(id)members;
+ (id)itemWithRoute:(id)route;
+ (id)itemWithVendorSpecificCustomRowTitle:(id)title icon:(id)icon identifier:(id)identifier;
+ (id)itemWithVendorSpecificLeader:(id)leader members:(id)members;
+ (id)itemWithVendorSpecificRoute:(id)route;
- (BOOL)isEqual:(id)equal;
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
    firstObject = [(NSArray *)self->_routes firstObject];
    v6 = [firstObject debugDescription];
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
    firstObject = v9;
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

        routeUID = [*(*(&v11 + 1) + 8 * i) routeUID];
        v6 ^= [routeUID hash];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(MPAVRoutingViewItem *)v5 type];
      if (type != [(MPAVRoutingViewItem *)self type])
      {
        LOBYTE(self) = 0;
        goto LABEL_11;
      }

      type2 = [(MPAVRoutingViewItem *)self type];
      if (type2 > 7)
      {
        goto LABEL_11;
      }

      if (((1 << type2) & 0xBB) != 0)
      {
        self = self->_routes;
        routes = [(MPAVRoutingViewItem *)v5 routes];
        LOBYTE(self) = [(MPAVRoutingViewItem *)self isEqual:routes];
LABEL_7:

LABEL_11:
        goto LABEL_12;
      }

      if (type2 == 2)
      {
        actionIdentifier = self->_actionIdentifier;
        routes = [(MPAVRoutingViewItem *)v5 actionIdentifier];
        if ([(NSString *)actionIdentifier isEqualToString:routes])
        {
          localizedSubtitle = self->_localizedSubtitle;
          localizedSubtitle = [(MPAVRoutingViewItem *)v5 localizedSubtitle];
          if (localizedSubtitle == localizedSubtitle || [(NSString *)localizedSubtitle isEqual:localizedSubtitle])
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
        routes = [(MPAVRoutingViewItem *)v5 vendorSpecificCustomRowIdentifier];
        if ([(NSString *)vendorSpecificCustomRowIdentifier isEqualToString:routes])
        {
          self = self->_localizedTitle;
          localizedSubtitle = [(MPAVRoutingViewItem *)v5 localizedTitle];
          LOBYTE(self) = [(MPAVRoutingViewItem *)self isEqualToString:localizedSubtitle];
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
  mainRoute = [(MPAVRoutingViewItem *)self mainRoute];
  parentRoute = [mainRoute parentRoute];

  if (parentRoute)
  {
    parentRoute = 0;
    v4 = mainRoute;
    do
    {
      ++parentRoute;
      mainRoute = [v4 parentRoute];

      parentRoute2 = [mainRoute parentRoute];

      v4 = mainRoute;
    }

    while (parentRoute2);
  }

  return parentRoute;
}

- (BOOL)isPickable
{
  mainRoute = [(MPAVRoutingViewItem *)self mainRoute];
  isPickable = [mainRoute isPickable];

  return isPickable;
}

- (BOOL)isExpandable
{
  mainRoute = [(MPAVRoutingViewItem *)self mainRoute];
  subRoutes = [mainRoute subRoutes];
  if ([subRoutes count])
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
    firstObject = leader;
  }

  else
  {
    firstObject = [(NSArray *)self->_routes firstObject];
  }

  return firstObject;
}

- (NSString)localizedTitle
{
  v24 = *MEMORY[0x1E69E9840];
  type = [(MPAVRoutingViewItem *)self type];
  v4 = &stru_1F149ECA8;
  if (type > 2)
  {
    if (type <= 5)
    {
      if ((type - 3) >= 2)
      {
        if (type != 5)
        {
          goto LABEL_26;
        }

        routes = [(MPAVRoutingViewItem *)self routes];
        firstObject = [routes firstObject];
        protocolName = [firstObject protocolName];
        goto LABEL_11;
      }

LABEL_10:
      routes = [(MPAVRoutingViewItem *)self routes];
      firstObject = [routes firstObject];
      protocolName = [firstObject routeName];
LABEL_11:
      v4 = protocolName;

LABEL_25:
      goto LABEL_26;
    }

    if (type != 7)
    {
      if (type != 6)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

LABEL_15:
    v8 = MEMORY[0x1E695DF70];
    routes2 = [(MPAVRoutingViewItem *)self routes];
    routes = [v8 arrayWithCapacity:{objc_msgSend(routes2, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    routes3 = [(MPAVRoutingViewItem *)self routes];
    v11 = [routes3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(routes3);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          routeName = [v15 routeName];

          if (routeName)
          {
            routeName2 = [v15 routeName];
            [routes addObject:routeName2];
          }
        }

        v12 = [routes3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v4 = [routes componentsJoinedByString:@" + "];
    goto LABEL_25;
  }

  switch(type)
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

+ (id)itemWithVendorSpecificCustomRowTitle:(id)title icon:(id)icon identifier:(id)identifier
{
  iconCopy = icon;
  identifierCopy = identifier;
  titleCopy = title;
  v10 = objc_alloc_init(MPAVRoutingViewItem);
  v11 = [titleCopy copy];

  localizedTitle = v10->_localizedTitle;
  v10->_localizedTitle = v11;

  image = v10->_image;
  v10->_image = iconCopy;
  v14 = iconCopy;

  v15 = [identifierCopy copy];
  vendorSpecificCustomRowIdentifier = v10->_vendorSpecificCustomRowIdentifier;
  v10->_vendorSpecificCustomRowIdentifier = v15;

  v10->_enabled = 1;
  v10->_type = 6;

  return v10;
}

+ (id)itemWithVendorSpecificLeader:(id)leader members:(id)members
{
  v20[1] = *MEMORY[0x1E69E9840];
  leaderCopy = leader;
  membersCopy = members;
  v7 = objc_alloc_init(MPAVRoutingViewItem);
  v8 = [membersCopy copy];

  if (![(NSArray *)v8 containsObject:leaderCopy])
  {
    v20[0] = leaderCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v10 = [v9 arrayByAddingObjectsFromArray:v8];

    v8 = v10;
  }

  routes = v7->_routes;
  v7->_routes = v8;
  v12 = v8;

  v13 = MEMORY[0x1E696AEC0];
  mediaPlayerBundle = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  v15 = [mediaPlayerBundle localizedStringForKey:@"ROUTING_GROUP_SUBTITLE_COUNT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v16 = [v13 stringWithFormat:v15, -[NSArray count](v12, "count")];
  localizedSubtitle = v7->_localizedSubtitle;
  v7->_localizedSubtitle = v16;

  leader = v7->_leader;
  v7->_leader = leaderCopy;

  v7->_enabled = 1;
  v7->_type = 7;

  return v7;
}

+ (id)itemWithVendorSpecificRoute:(id)route
{
  v9[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v4 = objc_alloc_init(MPAVRoutingViewItem);
  v9[0] = routeCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  routes = v4->_routes;
  v4->_routes = v5;

  v4->_enabled = 1;
  if ([routeCopy isGroup])
  {
    v7 = 4;
  }

  else if ([routeCopy isSubRoute])
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

+ (id)itemWithActionTitle:(id)title subtitle:(id)subtitle enabled:(BOOL)enabled identifier:(id)identifier image:(id)image
{
  imageCopy = image;
  identifierCopy = identifier;
  subtitleCopy = subtitle;
  titleCopy = title;
  v15 = objc_alloc_init(MPAVRoutingViewItem);
  v16 = [titleCopy copy];

  localizedTitle = v15->_localizedTitle;
  v15->_localizedTitle = v16;

  v18 = [subtitleCopy copy];
  localizedSubtitle = v15->_localizedSubtitle;
  v15->_localizedSubtitle = v18;

  v15->_enabled = enabled;
  v20 = [identifierCopy copy];

  actionIdentifier = v15->_actionIdentifier;
  v15->_actionIdentifier = v20;

  image = v15->_image;
  v15->_image = imageCopy;

  v15->_type = 2;

  return v15;
}

+ (id)itemWithLeader:(id)leader members:(id)members
{
  leaderCopy = leader;
  membersCopy = members;
  v7 = objc_alloc_init(MPAVRoutingViewItem);
  v8 = [membersCopy copy];

  if (![(NSArray *)v8 containsObject:leaderCopy])
  {
    v9 = [(NSArray *)v8 arrayByAddingObject:leaderCopy];

    v8 = v9;
  }

  routes = v7->_routes;
  v7->_routes = v8;
  v11 = v8;

  v12 = MEMORY[0x1E696AEC0];
  mediaPlayerBundle = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  v14 = [mediaPlayerBundle localizedStringForKey:@"ROUTING_GROUP_SUBTITLE_COUNT" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v15 = [v12 stringWithFormat:v14, -[NSArray count](v11, "count")];
  localizedSubtitle = v7->_localizedSubtitle;
  v7->_localizedSubtitle = v15;

  leader = v7->_leader;
  v7->_leader = leaderCopy;

  v7->_enabled = 1;
  v7->_type = 1;

  return v7;
}

+ (id)itemWithRoute:(id)route
{
  v8[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v4 = objc_alloc_init(MPAVRoutingViewItem);
  v8[0] = routeCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  routes = v4->_routes;
  v4->_routes = v5;

  v4->_enabled = 1;
  v4->_type = 0;

  return v4;
}

@end