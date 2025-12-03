@interface TileSetOverrideDebugController
- (TileSetOverrideDebugController)initWithStyle:(int64_t)style;
- (id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadTileSetBeingOverridden;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TileSetOverrideDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  if (self->_versionTextField == editingCopy)
  {
    v8 = editingCopy;
    text = [(UITextField *)editingCopy text];
    if ([text length])
    {
      self->_hasOverrideVersion = 1;
      self->_version = [text intValue];
      [(UITextField *)v8 resignFirstResponder];
      tableView = [(TileSetOverrideDebugController *)self tableView];
      [tableView reloadData];
    }

    else
    {
      self->_hasOverrideVersion = 0;
    }
  }

  else
  {
    if (self->_baseURLTextField == editingCopy)
    {
      v8 = editingCopy;
      text2 = [(UITextField *)editingCopy text];
      [(TileSetOverrideDebugController *)self setBaseURL:text2];
    }

    else
    {
      if (self->_localizationURLTextField != editingCopy)
      {
        goto LABEL_11;
      }

      v8 = editingCopy;
      text2 = [(UITextField *)editingCopy text];
      [(TileSetOverrideDebugController *)self setLocalizationURL:text2];
    }

    [(UITextField *)v8 resignFirstResponder];
    text = [(TileSetOverrideDebugController *)self tableView];
    [text reloadData];
  }

  editingCopy = v8;
LABEL_11:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(UITextField *)self->_versionTextField resignFirstResponder];
  [(UITextField *)self->_baseURLTextField resignFirstResponder];
  [(UITextField *)self->_localizationURLTextField resignFirstResponder];
  section = [pathCopy section];
  if (section <= 2)
  {
    if (section)
    {
      if (section == 1)
      {
        v38 = [pathCopy row];
        if (v38 >= 3)
        {
          v11 = -1;
        }

        else
        {
          v11 = v38;
        }

        v12 = 152;
      }

      else
      {
        if (section != 2)
        {
          goto LABEL_48;
        }

        v10 = [pathCopy row];
        if (v10 >= 3)
        {
          v11 = -1;
        }

        else
        {
          v11 = v10;
        }

        v12 = 156;
      }
    }

    else
    {
      v37 = [pathCopy row];
      if (v37 > 0x1D)
      {
        v11 = -1;
      }

      else
      {
        v11 = dword_101214F40[v37];
      }

      v12 = 148;
    }

    *(&self->super.super.super.super.super.super.isa + v12) = v11;
    [(TileSetOverrideDebugController *)self _reloadTileSetBeingOverridden];
    goto LABEL_48;
  }

  if (section <= 4)
  {
    if (section == 3)
    {
      versionTextField = self->_versionTextField;
    }

    else
    {
      versionTextField = self->_baseURLTextField;
    }

    goto LABEL_40;
  }

  if (section == 5)
  {
    versionTextField = self->_localizationURLTextField;
LABEL_40:
    [(UITextField *)versionTextField becomeFirstResponder];
    goto LABEL_48;
  }

  if (section == 6)
  {
    v41 = pathCopy;
    v42 = viewCopy;
    v39 = GeoServicesConfig_ActiveTileGroupOverrides[1];
    v40 = GeoServicesConfig_ActiveTileGroupOverrides[0];
    v13 = GEOConfigGetArray();
    v43 = [NSMutableArray arrayWithArray:v13];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    selfCopy = self;
    if (v14)
    {
      v15 = v14;
      v45 = *v48;
      v16 = GEOActiveTileGroupOverrideStyleKey;
      v17 = GEOActiveTileGroupOverrideSizeKey;
      v18 = GEOActiveTileGroupOverrideScaleKey;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v48 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v47 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:{v16, v39, v40}];
          intValue = [v21 intValue];

          v23 = [v20 objectForKeyedSubscript:v17];
          intValue2 = [v23 intValue];

          v25 = [v20 objectForKeyedSubscript:v18];
          intValue3 = [v25 intValue];

          self = selfCopy;
          if (intValue == selfCopy->_style && intValue2 == selfCopy->_size && intValue3 == selfCopy->_scale)
          {
            [v43 removeObject:v20];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v15);
    }

    pathCopy = v41;
    v27 = v43;
    if (![v41 row])
    {
      v51[0] = GEOActiveTileGroupOverrideStyleKey;
      v28 = [NSNumber numberWithInt:self->_style];
      v52[0] = v28;
      v51[1] = GEOActiveTileGroupOverrideSizeKey;
      v29 = [NSNumber numberWithInt:self->_size];
      v52[1] = v29;
      v51[2] = GEOActiveTileGroupOverrideScaleKey;
      v30 = [NSNumber numberWithInt:self->_scale];
      v52[2] = v30;
      v31 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
      v32 = [NSMutableDictionary dictionaryWithDictionary:v31];

      self = selfCopy;
      if (selfCopy->_hasOverrideVersion)
      {
        v33 = [NSNumber numberWithUnsignedInt:selfCopy->_version];
        [v32 setObject:v33 forKeyedSubscript:GEOActiveTileGroupOverrideVersionKey];
      }

      if ([(NSString *)selfCopy->_baseURL length:v39])
      {
        [v32 setObject:selfCopy->_baseURL forKeyedSubscript:GEOActiveTileGroupOverrideBaseURLKey];
      }

      if ([(NSString *)selfCopy->_localizationURL length])
      {
        [v32 setObject:selfCopy->_localizationURL forKeyedSubscript:GEOActiveTileGroupOverrideLocalizationURLKey];
      }

      [v43 addObject:v32];
    }

    if (![v43 count])
    {

      v27 = 0;
    }

    viewCopy = v42;
    GEOConfigSetArray();
    v34 = +[NSNotificationCenter defaultCenter];
    [v34 postNotificationName:@"ActiveTileGroupOverridesDidChangeNotification" object:0];

    navigationController = [(TileSetOverrideDebugController *)self navigationController];
    v36 = [navigationController popViewControllerAnimated:1];
  }

LABEL_48:
  [viewCopy reloadData];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_reloadTileSetBeingOverridden
{
  tileSetBeingOverridden = self->_tileSetBeingOverridden;
  self->_tileSetBeingOverridden = 0;

  v4 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v4 activeTileGroup];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  tileSets = [activeTileGroup tileSets];
  v7 = [tileSets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v13 = activeTileGroup;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(tileSets);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 style] == self->_style && objc_msgSend(v10, "scale") == self->_scale && objc_msgSend(v10, "size") == self->_size)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [tileSets countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_13:
    activeTileGroup = v13;
  }

  v11 = self->_tileSetBeingOverridden;
  self->_tileSetBeingOverridden = v7;

  tableView = [(TileSetOverrideDebugController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 6)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v9 = [pathCopy row];
    textLabel = [v8 textLabel];
    v11 = textLabel;
    if (v9)
    {
      v12 = @"Remove Override";
    }

    else
    {
      v12 = @"Apply Override";
    }

    [textLabel setText:v12];

    textLabel2 = [v8 textLabel];
    [textLabel2 setTextAlignment:1];
    goto LABEL_6;
  }

  if ([pathCopy section] == 3)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [v8 setAccessoryType:0];
    [v8 setSelectionStyle:0];
    v14 = 112;
    versionTextField = self->_versionTextField;
    if (self->_hasOverrideVersion)
    {
      v16 = [NSString stringWithFormat:@"%i", self->_version];
      [(UITextField *)versionTextField setText:v16];
    }

    else
    {
      [(UITextField *)self->_versionTextField setText:0];
    }

    baseURLTextField = self->_versionTextField;
    tileSetBeingOverridden = self->_tileSetBeingOverridden;
    if (!tileSetBeingOverridden)
    {
      [(UITextField *)self->_versionTextField setPlaceholder:0];
      goto LABEL_19;
    }

    baseURL = [NSString stringWithFormat:@"%i", [(GEOActiveTileSet *)tileSetBeingOverridden version]];
LABEL_17:
    v20 = baseURL;
    [(UITextField *)baseURLTextField setPlaceholder:baseURL];

LABEL_19:
    [*(&self->super.super.super.super.super.super.isa + v14) sizeToFit];
    [*(&self->super.super.super.super.super.super.isa + v14) frame];
    v22 = v21;
    contentView = [v8 contentView];
    [contentView bounds];
    v25 = v24 + -12.0;

    contentView2 = [v8 contentView];
    [contentView2 bounds];
    v28 = (v27 - v25) * 0.5;

    contentView3 = [v8 contentView];
    [contentView3 bounds];
    v31 = (v30 - v22) * 0.5;

    [*(&self->super.super.super.super.super.super.isa + v14) setFrame:{v28, v31, v25, v22}];
    [*(&self->super.super.super.super.super.super.isa + v14) removeFromSuperview];
    contentView4 = [v8 contentView];
    [contentView4 addSubview:*(&self->super.super.super.super.super.super.isa + v14)];

    goto LABEL_20;
  }

  if ([pathCopy section] == 4)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [v8 setAccessoryType:0];
    [v8 setSelectionStyle:0];
    v14 = 120;
    [(UITextField *)self->_baseURLTextField setText:self->_baseURL];
    baseURLTextField = self->_baseURLTextField;
    baseURL = [(GEOActiveTileSet *)self->_tileSetBeingOverridden baseURL];
    goto LABEL_17;
  }

  if ([pathCopy section] == 5)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [v8 setAccessoryType:0];
    [v8 setSelectionStyle:0];
    v14 = 128;
    [(UITextField *)self->_localizationURLTextField setText:self->_localizationURL];
    baseURLTextField = self->_localizationURLTextField;
    baseURL = [(GEOActiveTileSet *)self->_tileSetBeingOverridden localizationURL];
    goto LABEL_17;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"TileSetInfoCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TileSetInfoCell"];
  }

  section = [pathCopy section];
  if (section > 1)
  {
    if (section == 2)
    {
      v41 = [pathCopy row];
      if (v41 >= 3)
      {
        v37 = -1;
        0xFFFFFFFFLL = [NSString stringWithFormat:@"(unknown: %i)", 0xFFFFFFFFLL];
      }

      else
      {
        0xFFFFFFFFLL = *(&off_1016301D0 + v41);
        v37 = v41;
      }

      textLabel3 = [v8 textLabel];
      [textLabel3 setText:0xFFFFFFFFLL];

      v44 = 156;
      goto LABEL_43;
    }

    if (section == 3)
    {
      textLabel2 = [NSString stringWithFormat:@"%i", self->_version];
      textLabel4 = [v8 textLabel];
      [textLabel4 setText:textLabel2];

LABEL_6:
    }
  }

  else
  {
    if (!section)
    {
      v39 = [pathCopy row];
      if (v39 >= 0x1E)
      {
        v37 = -1;
        0xFFFFFFFFLL2 = [NSString stringWithFormat:@"(unknown: %i)", 0xFFFFFFFFLL];
      }

      else
      {
        v37 = dword_101214F40[v39];
        0xFFFFFFFFLL2 = *(&off_1016300C8 + v39);
      }

      textLabel5 = [v8 textLabel];
      [textLabel5 setText:0xFFFFFFFFLL2];

      v44 = 148;
      goto LABEL_43;
    }

    if (section == 1)
    {
      v35 = [pathCopy row];
      if (v35 >= 3)
      {
        v37 = -1;
        0xFFFFFFFFLL3 = [NSString stringWithFormat:@"(unknown: %i)", 0xFFFFFFFFLL];
      }

      else
      {
        0xFFFFFFFFLL3 = *(&off_1016301B8 + v35);
        v37 = v35;
      }

      textLabel6 = [v8 textLabel];
      [textLabel6 setText:0xFFFFFFFFLL3];

      v44 = 152;
LABEL_43:
      if (*(&self->super.super.super.super.super.super.isa + v44) == v37)
      {
        v47 = 3;
      }

      else
      {
        v47 = 0;
      }

      [v8 setAccessoryType:v47];
    }
  }

LABEL_20:

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section > 6)
  {
    return 0;
  }

  else
  {
    return qword_101214F08[section];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_101630098 + section);
  }
}

- (void)dealloc
{
  [(UITextField *)self->_versionTextField setDelegate:0];
  [(UITextField *)self->_baseURLTextField setDelegate:0];
  [(UITextField *)self->_localizationURLTextField setDelegate:0];
  v3.receiver = self;
  v3.super_class = TileSetOverrideDebugController;
  [(MapsDebugValuesViewController *)&v3 dealloc];
}

- (TileSetOverrideDebugController)initWithStyle:(int64_t)style
{
  v16.receiver = self;
  v16.super_class = TileSetOverrideDebugController;
  v3 = [(TileSetOverrideDebugController *)&v16 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    v3->_style = 1;
    v3->_scale = 0;
    v3->_size = 2;
    v5 = objc_alloc_init(UITextField);
    versionTextField = v4->_versionTextField;
    v4->_versionTextField = v5;

    [(UITextField *)v4->_versionTextField setAutoresizingMask:18];
    v7 = +[UIColor clearColor];
    [(UITextField *)v4->_versionTextField setBackgroundColor:v7];

    [(UITextField *)v4->_versionTextField setAutocorrectionType:1];
    [(UITextField *)v4->_versionTextField setAutocapitalizationType:0];
    [(UITextField *)v4->_versionTextField setKeyboardType:4];
    [(UITextField *)v4->_versionTextField setReturnKeyType:9];
    [(UITextField *)v4->_versionTextField setClearButtonMode:1];
    [(UITextField *)v4->_versionTextField setDelegate:v4];
    v8 = objc_alloc_init(UITextField);
    baseURLTextField = v4->_baseURLTextField;
    v4->_baseURLTextField = v8;

    [(UITextField *)v4->_baseURLTextField setAutoresizingMask:18];
    v10 = +[UIColor clearColor];
    [(UITextField *)v4->_baseURLTextField setBackgroundColor:v10];

    [(UITextField *)v4->_baseURLTextField setAutocorrectionType:1];
    [(UITextField *)v4->_baseURLTextField setAutocapitalizationType:0];
    [(UITextField *)v4->_baseURLTextField setKeyboardType:3];
    [(UITextField *)v4->_baseURLTextField setReturnKeyType:9];
    [(UITextField *)v4->_baseURLTextField setClearButtonMode:1];
    [(UITextField *)v4->_baseURLTextField setDelegate:v4];
    v11 = objc_alloc_init(UITextField);
    localizationURLTextField = v4->_localizationURLTextField;
    v4->_localizationURLTextField = v11;

    [(UITextField *)v4->_localizationURLTextField setAutoresizingMask:18];
    v13 = +[UIColor clearColor];
    [(UITextField *)v4->_localizationURLTextField setBackgroundColor:v13];

    [(UITextField *)v4->_localizationURLTextField setAutocorrectionType:1];
    [(UITextField *)v4->_localizationURLTextField setAutocapitalizationType:0];
    [(UITextField *)v4->_localizationURLTextField setKeyboardType:3];
    [(UITextField *)v4->_localizationURLTextField setReturnKeyType:9];
    [(UITextField *)v4->_localizationURLTextField setClearButtonMode:1];
    [(UITextField *)v4->_localizationURLTextField setDelegate:v4];
    [(TileSetOverrideDebugController *)v4 _reloadTileSetBeingOverridden];
    v14 = v4;
  }

  return v4;
}

@end