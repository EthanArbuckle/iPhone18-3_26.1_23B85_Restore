@interface ATXPinnedTimeEvent
- (ATXPinnedTimeEvent)initWithCoder:(id)a3;
- (ATXPinnedTimeEvent)initWithTitle:(id)a3 icon:(id)a4 location:(id)a5 sourceBundleIdentifier:(id)a6 durationHint:(double)a7 actions:(id)a8;
- (ATXPinnedTimeEvent)initWithTitle:(id)a3 icon:(id)a4 location:(id)a5 sourceBundleIdentifier:(id)a6 durationHint:(double)a7 actions:(id)a8 date:(id)a9 label:(id)a10;
- (ATXPinnedTimeEvent)initWithURL:(id)a3 sourceBundleIdentifier:(id)a4 iconData:(id)a5 title:(id)a6 summary:(id)a7 location:(id)a8 siteName:(id)a9 durationHint:(double)a10 actions:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPinnedTimeEvent

- (ATXPinnedTimeEvent)initWithURL:(id)a3 sourceBundleIdentifier:(id)a4 iconData:(id)a5 title:(id)a6 summary:(id)a7 location:(id)a8 siteName:(id)a9 durationHint:(double)a10 actions:(id)a11
{
  v43 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a11;
  v44.receiver = self;
  v44.super_class = ATXPinnedTimeEvent;
  v26 = [(ATXPinnedTimeEvent *)&v44 init];
  if (v26)
  {
    v27 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v26->_uuid;
    v26->_uuid = v27;

    v26->_eventType = 0;
    objc_storeStrong(&v26->_url, a3);
    v29 = [v21 copy];
    title = v26->_title;
    v26->_title = v29;

    v31 = [v19 copy];
    sourceBundleIdentifier = v26->_sourceBundleIdentifier;
    v26->_sourceBundleIdentifier = v31;

    v33 = [v20 copy];
    iconData = v26->_iconData;
    v26->_iconData = v33;

    v35 = [v22 copy];
    summary = v26->_summary;
    v26->_summary = v35;

    objc_storeStrong(&v26->_location, a8);
    v37 = [v24 copy];
    siteName = v26->_siteName;
    v26->_siteName = v37;

    v26->_durationHint = a10;
    v39 = [v25 copy];
    actions = v26->_actions;
    v26->_actions = v39;

    v41 = v26;
  }

  return v26;
}

- (ATXPinnedTimeEvent)initWithTitle:(id)a3 icon:(id)a4 location:(id)a5 sourceBundleIdentifier:(id)a6 durationHint:(double)a7 actions:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = ATXPinnedTimeEvent;
  v19 = [(ATXPinnedTimeEvent *)&v30 init];
  if (v19)
  {
    v20 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v19->_uuid;
    v19->_uuid = v20;

    v19->_eventType = 1;
    v22 = [v14 copy];
    title = v19->_title;
    v19->_title = v22;

    objc_storeStrong(&v19->_icon, a4);
    objc_storeStrong(&v19->_location, a5);
    v24 = [v17 copy];
    sourceBundleIdentifier = v19->_sourceBundleIdentifier;
    v19->_sourceBundleIdentifier = v24;

    v19->_durationHint = a7;
    v26 = [v18 copy];
    actions = v19->_actions;
    v19->_actions = v26;

    v28 = v19;
  }

  return v19;
}

- (ATXPinnedTimeEvent)initWithTitle:(id)a3 icon:(id)a4 location:(id)a5 sourceBundleIdentifier:(id)a6 durationHint:(double)a7 actions:(id)a8 date:(id)a9 label:(id)a10
{
  v17 = a3;
  v38 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v39.receiver = self;
  v39.super_class = ATXPinnedTimeEvent;
  v23 = [(ATXPinnedTimeEvent *)&v39 init];
  if (v23)
  {
    v24 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v23->_uuid;
    v23->_uuid = v24;

    v23->_eventType = 2;
    v26 = [v17 copy];
    title = v23->_title;
    v23->_title = v26;

    objc_storeStrong(&v23->_icon, a4);
    objc_storeStrong(&v23->_location, a5);
    v28 = [v19 copy];
    sourceBundleIdentifier = v23->_sourceBundleIdentifier;
    v23->_sourceBundleIdentifier = v28;

    v23->_durationHint = a7;
    v30 = [v20 copy];
    actions = v23->_actions;
    v23->_actions = v30;

    v32 = [v21 copy];
    date = v23->_date;
    v23->_date = v32;

    v34 = [v22 copy];
    label = v23->_label;
    v23->_label = v34;

    v36 = v23;
  }

  return v23;
}

- (ATXPinnedTimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"eventType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleIdentifier"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [v4 decodeDoubleForKey:@"durationHint"];
    if (v9 == 0.0)
    {
      v10 = 1800.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
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
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
      uuid = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      if (v25)
      {
        v26 = [(ATXPinnedTimeEvent *)self initWithTitle:v8 icon:v25 location:v11 sourceBundleIdentifier:v29 durationHint:v15 actions:uuid date:v10 label:v16];
        self = v26;
        if (v26)
        {
          objc_storeStrong(&v26->_uuid, v5);
        }

        v23 = self;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_27;
    }

    if (v6 == 1)
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      if (v16)
      {
        self = [(ATXPinnedTimeEvent *)self initWithTitle:v8 icon:v16 location:v11 sourceBundleIdentifier:v7 durationHint:v15 actions:v10];
        if (!self)
        {
          v23 = 0;
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
        v23 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
      if (v16)
      {
        [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
        v28 = v8;
        uuid = v17 = v7;
        v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
        v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siteName"];
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
        v23 = self;
LABEL_27:

        v7 = v29;
        goto LABEL_28;
      }
    }

    v23 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v23 = 0;
LABEL_30:

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v5 = a3;
  [v5 encodeInteger:eventType forKey:@"eventType"];
  [v5 encodeObject:self->_sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_url forKey:@"url"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeObject:self->_iconData forKey:@"iconData"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_siteName forKey:@"siteName"];
  [v5 encodeObject:self->_summary forKey:@"summary"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeDouble:@"durationHint" forKey:self->_durationHint];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
  [v5 encodeObject:self->_label forKey:@"label"];
}

@end