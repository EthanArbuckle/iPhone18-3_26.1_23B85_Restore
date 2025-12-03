@interface TileGroupSectionsDebugController
- (TileGroupSectionsDebugController)initWithStyle:(int64_t)style;
- (id)_tileGroup;
- (id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TileGroupSectionsDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy section] || !self->_canChangeActiveTileGroup)
  {
    v7 = [pathCopy row];
    v8 = pathCopy;
    if (v7)
    {
      goto LABEL_12;
    }

    v9 = [TileGroupTileSetsDebugController alloc];
    tableView = [(TileGroupSectionsDebugController *)self tableView];
    tableView2 = -[TileGroupTileSetsDebugController initWithStyle:](v9, "initWithStyle:", [tableView style]);

    [(TileGroupTileSetsDebugController *)tableView2 setTileGroupIdentifier:[(TileGroupSectionsDebugController *)self tileGroupIdentifier]];
    [(TileGroupTileSetsDebugController *)tableView2 setResourceManifest:self->_resourceManifest];
    [(TileGroupTileSetsDebugController *)tableView2 setTitle:@"Tile Sets"];
    navigationItem = [(TileGroupSectionsDebugController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (!rightBarButtonItem)
    {
      navigationItem2 = [(TileGroupTileSetsDebugController *)tableView2 navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
    }

    navigationController = [(TileGroupSectionsDebugController *)self navigationController];
    [navigationController pushViewController:tableView2 animated:1];
  }

  else
  {
    if ([(TileGroupSectionsDebugController *)self tileGroupIdentifier]< 0)
    {
      _GEOConfigRemoveValue();
      v6 = +[GEOResourceManifestManager modernManager];
      [v6 resetActiveTileGroup];
    }

    else
    {
      GEOConfigSetBOOL();
      v6 = +[GEOResourceManifestManager modernManager];
      [v6 setActiveTileGroupIdentifier:{-[TileGroupSectionsDebugController tileGroupIdentifier](self, "tileGroupIdentifier")}];
    }

    tableView2 = [(TileGroupSectionsDebugController *)self tableView];
    [(MapsDebugValuesViewController *)tableView2 reloadData];
  }

  v8 = pathCopy;
LABEL_12:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] || !self->_canChangeActiveTileGroup)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"TileSetNavigationCell"];
    if (!v8)
    {
      v8 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"TileSetNavigationCell"];
    }

    [v8 setAccessoryType:1];
    v15 = [pathCopy row];
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_18;
      }

      v16 = @"Layers";
    }

    else
    {
      v16 = @"Tile Sets";
    }

    textLabel = [v8 textLabel];
    [textLabel setText:v16];
  }

  else
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    if (-[TileGroupSectionsDebugController tileGroupIdentifier](self, "tileGroupIdentifier") < 0 && !GEOConfigGetBOOL() || GEOConfigGetBOOL() && (v9 = -[TileGroupSectionsDebugController tileGroupIdentifier](self, "tileGroupIdentifier"), +[GEOResourceManifestManager modernManager](GEOResourceManifestManager, "modernManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 activeTileGroupIdentifier], v10, v9 == v11))
    {
      textLabel2 = [v8 textLabel];
      [textLabel2 setText:@"Active"];

      [v8 setSelectionStyle:0];
      v13 = +[UIColor secondaryLabelColor];
      textLabel3 = [v8 textLabel];
      [textLabel3 setTextColor:v13];
    }

    else
    {
      textLabel4 = [v8 textLabel];
      [textLabel4 setText:@"Make Active"];

      [v8 setSelectionStyle:1];
    }

    textLabel = [v8 textLabel];
    [textLabel setTextAlignment:1];
  }

LABEL_18:

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section || !self->_canChangeActiveTileGroup)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_tileGroup
{
  resources = [(GEOResourceManifestDownload *)self->_resourceManifest resources];
  if (![resources tileGroupsCount])
  {
LABEL_12:
    v11 = 0;
    goto LABEL_15;
  }

  if ([(TileGroupSectionsDebugController *)self tileGroupIdentifier]!= -1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    tileGroups = [resources tileGroups];
    v5 = [tileGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(tileGroups);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          identifier = [v9 identifier];
          if ([(TileGroupSectionsDebugController *)self tileGroupIdentifier]== identifier)
          {
            v11 = v9;

            goto LABEL_15;
          }
        }

        v6 = [tileGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v11 = [resources tileGroupAtIndex:0];
LABEL_15:

  return v11;
}

- (void)dealloc
{
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  v4.receiver = self;
  v4.super_class = TileGroupSectionsDebugController;
  [(MapsDebugValuesViewController *)&v4 dealloc];
}

- (TileGroupSectionsDebugController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = TileGroupSectionsDebugController;
  v3 = [(TileGroupSectionsDebugController *)&v6 initWithStyle:style];
  if (v3)
  {
    v4 = +[GEOResourceManifestManager modernManager];
    [v4 addTileGroupObserver:v3 queue:&_dispatch_main_q];
  }

  return v3;
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  tableView = [(TileGroupSectionsDebugController *)self tableView];
  [tableView reloadData];
}

@end