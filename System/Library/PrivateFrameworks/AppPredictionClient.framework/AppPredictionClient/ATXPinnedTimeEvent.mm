@interface ATXPinnedTimeEvent
- (ATXPinnedTimeEvent)initWithCoder:(id)coder;
- (ATXPinnedTimeEvent)initWithTitle:(id)title icon:(id)icon location:(id)location sourceBundleIdentifier:(id)identifier durationHint:(double)hint actions:(id)actions;
- (ATXPinnedTimeEvent)initWithTitle:(id)title icon:(id)icon location:(id)location sourceBundleIdentifier:(id)identifier durationHint:(double)hint actions:(id)actions date:(id)date label:(id)self0;
- (ATXPinnedTimeEvent)initWithURL:(id)l sourceBundleIdentifier:(id)identifier iconData:(id)data title:(id)title summary:(id)summary location:(id)location siteName:(id)name durationHint:(double)self0 actions:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPinnedTimeEvent

- (ATXPinnedTimeEvent)initWithURL:(id)l sourceBundleIdentifier:(id)identifier iconData:(id)data title:(id)title summary:(id)summary location:(id)location siteName:(id)name durationHint:(double)self0 actions:(id)self1
{
  lCopy = l;
  identifierCopy = identifier;
  dataCopy = data;
  titleCopy = title;
  summaryCopy = summary;
  locationCopy = location;
  nameCopy = name;
  actionsCopy = actions;
  v44.receiver = self;
  v44.super_class = ATXPinnedTimeEvent;
  v26 = [(ATXPinnedTimeEvent *)&v44 init];
  if (v26)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v26->_uuid;
    v26->_uuid = uUID;

    v26->_eventType = 0;
    objc_storeStrong(&v26->_url, l);
    v29 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v29;

    v31 = [identifierCopy copy];
    sourceBundleIdentifier = v26->_sourceBundleIdentifier;
    v26->_sourceBundleIdentifier = v31;

    v33 = [dataCopy copy];
    iconData = v26->_iconData;
    v26->_iconData = v33;

    v35 = [summaryCopy copy];
    summary = v26->_summary;
    v26->_summary = v35;

    objc_storeStrong(&v26->_location, location);
    v37 = [nameCopy copy];
    siteName = v26->_siteName;
    v26->_siteName = v37;

    v26->_durationHint = hint;
    v39 = [actionsCopy copy];
    actions = v26->_actions;
    v26->_actions = v39;

    v41 = v26;
  }

  return v26;
}

- (ATXPinnedTimeEvent)initWithTitle:(id)title icon:(id)icon location:(id)location sourceBundleIdentifier:(id)identifier durationHint:(double)hint actions:(id)actions
{
  titleCopy = title;
  iconCopy = icon;
  locationCopy = location;
  identifierCopy = identifier;
  actionsCopy = actions;
  v30.receiver = self;
  v30.super_class = ATXPinnedTimeEvent;
  v19 = [(ATXPinnedTimeEvent *)&v30 init];
  if (v19)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v19->_uuid;
    v19->_uuid = uUID;

    v19->_eventType = 1;
    v22 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v22;

    objc_storeStrong(&v19->_icon, icon);
    objc_storeStrong(&v19->_location, location);
    v24 = [identifierCopy copy];
    sourceBundleIdentifier = v19->_sourceBundleIdentifier;
    v19->_sourceBundleIdentifier = v24;

    v19->_durationHint = hint;
    v26 = [actionsCopy copy];
    actions = v19->_actions;
    v19->_actions = v26;

    v28 = v19;
  }

  return v19;
}

- (ATXPinnedTimeEvent)initWithTitle:(id)title icon:(id)icon location:(id)location sourceBundleIdentifier:(id)identifier durationHint:(double)hint actions:(id)actions date:(id)date label:(id)self0
{
  titleCopy = title;
  iconCopy = icon;
  locationCopy = location;
  identifierCopy = identifier;
  actionsCopy = actions;
  dateCopy = date;
  labelCopy = label;
  v39.receiver = self;
  v39.super_class = ATXPinnedTimeEvent;
  v23 = [(ATXPinnedTimeEvent *)&v39 init];
  if (v23)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v23->_uuid;
    v23->_uuid = uUID;

    v23->_eventType = 2;
    v26 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v26;

    objc_storeStrong(&v23->_icon, icon);
    objc_storeStrong(&v23->_location, location);
    v28 = [identifierCopy copy];
    sourceBundleIdentifier = v23->_sourceBundleIdentifier;
    v23->_sourceBundleIdentifier = v28;

    v23->_durationHint = hint;
    v30 = [actionsCopy copy];
    actions = v23->_actions;
    v23->_actions = v30;

    v32 = [dateCopy copy];
    date = v23->_date;
    v23->_date = v32;

    v34 = [labelCopy copy];
    label = v23->_label;
    v23->_label = v34;

    v36 = v23;
  }

  return v23;
}

- (ATXPinnedTimeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"eventType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleIdentifier"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [coderCopy decodeDoubleForKey:@"durationHint"];
    if (v9 == 0.0)
    {
      v10 = 1800.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    v13 = v12;
    v14 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    if (v6 == 2)
    {
      v29 = v7;
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
      uuid = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      if (v25)
      {
        v26 = [(ATXPinnedTimeEvent *)self initWithTitle:v8 icon:v25 location:v11 sourceBundleIdentifier:v29 durationHint:v15 actions:uuid date:v10 label:v16];
        self = v26;
        if (v26)
        {
          objc_storeStrong(&v26->_uuid, v5);
        }

        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = 0;
      }

      goto LABEL_27;
    }

    if (v6 == 1)
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      if (v16)
      {
        self = [(ATXPinnedTimeEvent *)self initWithTitle:v8 icon:v16 location:v11 sourceBundleIdentifier:v7 durationHint:v15 actions:v10];
        if (!self)
        {
          selfCopy2 = 0;
          goto LABEL_28;
        }

        v29 = v7;
        v24 = v5;
        uuid = self->_uuid;
        self->_uuid = v24;
        goto LABEL_18;
      }
    }

    else
    {
      if (v6)
      {
        selfCopy2 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
      if (v16)
      {
        [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
        v28 = v8;
        uuid = v17 = v7;
        v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
        v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siteName"];
        v29 = v17;
        v21 = v17;
        v8 = v28;
        v22 = [(ATXPinnedTimeEvent *)self initWithURL:v16 sourceBundleIdentifier:v21 iconData:uuid title:v28 summary:v19 location:v11 siteName:v10 durationHint:v20 actions:v15];
        self = v22;
        if (v22)
        {
          objc_storeStrong(&v22->_uuid, v5);
        }

LABEL_18:
        selfCopy2 = self;
LABEL_27:

        v7 = v29;
        goto LABEL_28;
      }
    }

    selfCopy2 = 0;
LABEL_28:

    goto LABEL_29;
  }

  selfCopy2 = 0;
LABEL_30:

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeInteger:eventType forKey:@"eventType"];
  [coderCopy encodeObject:self->_sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_iconData forKey:@"iconData"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_siteName forKey:@"siteName"];
  [coderCopy encodeObject:self->_summary forKey:@"summary"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeDouble:@"durationHint" forKey:self->_durationHint];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
}

@end