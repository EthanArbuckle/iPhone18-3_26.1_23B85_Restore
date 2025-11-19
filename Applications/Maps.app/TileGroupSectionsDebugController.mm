@interface TileGroupSectionsDebugController
- (TileGroupSectionsDebugController)initWithStyle:(int64_t)a3;
- (id)_tileGroup;
- (id)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation TileGroupSectionsDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  [a3 deselectRowAtIndexPath:v16 animated:1];
  if ([v16 section] || !self->_canChangeActiveTileGroup)
  {
    v7 = [v16 row];
    v8 = v16;
    if (v7)
    {
      goto LABEL_12;
    }

    v9 = [TileGroupTileSetsDebugController alloc];
    v10 = [(TileGroupSectionsDebugController *)self tableView];
    v11 = -[TileGroupTileSetsDebugController initWithStyle:](v9, "initWithStyle:", [v10 style]);

    [(TileGroupTileSetsDebugController *)v11 setTileGroupIdentifier:[(TileGroupSectionsDebugController *)self tileGroupIdentifier]];
    [(TileGroupTileSetsDebugController *)v11 setResourceManifest:self->_resourceManifest];
    [(TileGroupTileSetsDebugController *)v11 setTitle:@"Tile Sets"];
    v12 = [(TileGroupSectionsDebugController *)self navigationItem];
    v13 = [v12 rightBarButtonItem];

    if (!v13)
    {
      v14 = [(TileGroupTileSetsDebugController *)v11 navigationItem];
      [v14 setRightBarButtonItem:0];
    }

    v15 = [(TileGroupSectionsDebugController *)self navigationController];
    [v15 pushViewController:v11 animated:1];
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

    v11 = [(TileGroupSectionsDebugController *)self tableView];
    [(MapsDebugValuesViewController *)v11 reloadData];
  }

  v8 = v16;
LABEL_12:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] || !self->_canChangeActiveTileGroup)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"TileSetNavigationCell"];
    if (!v8)
    {
      v8 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"TileSetNavigationCell"];
    }

    [v8 setAccessoryType:1];
    v15 = [v7 row];
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

    v17 = [v8 textLabel];
    [v17 setText:v16];
  }

  else
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    if (-[TileGroupSectionsDebugController tileGroupIdentifier](self, "tileGroupIdentifier") < 0 && !GEOConfigGetBOOL() || GEOConfigGetBOOL() && (v9 = -[TileGroupSectionsDebugController tileGroupIdentifier](self, "tileGroupIdentifier"), +[GEOResourceManifestManager modernManager](GEOResourceManifestManager, "modernManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 activeTileGroupIdentifier], v10, v9 == v11))
    {
      v12 = [v8 textLabel];
      [v12 setText:@"Active"];

      [v8 setSelectionStyle:0];
      v13 = +[UIColor secondaryLabelColor];
      v14 = [v8 textLabel];
      [v14 setTextColor:v13];
    }

    else
    {
      v18 = [v8 textLabel];
      [v18 setText:@"Make Active"];

      [v8 setSelectionStyle:1];
    }

    v17 = [v8 textLabel];
    [v17 setTextAlignment:1];
  }

LABEL_18:

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 || !self->_canChangeActiveTileGroup)
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
  v3 = [(GEOResourceManifestDownload *)self->_resourceManifest resources];
  if (![v3 tileGroupsCount])
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
    v4 = [v3 tileGroups];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 identifier];
          if ([(TileGroupSectionsDebugController *)self tileGroupIdentifier]== v10)
          {
            v11 = v9;

            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v11 = [v3 tileGroupAtIndex:0];
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

- (TileGroupSectionsDebugController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = TileGroupSectionsDebugController;
  v3 = [(TileGroupSectionsDebugController *)&v6 initWithStyle:a3];
  if (v3)
  {
    v4 = +[GEOResourceManifestManager modernManager];
    [v4 addTileGroupObserver:v3 queue:&_dispatch_main_q];
  }

  return v3;
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  v3 = [(TileGroupSectionsDebugController *)self tableView];
  [v3 reloadData];
}

@end