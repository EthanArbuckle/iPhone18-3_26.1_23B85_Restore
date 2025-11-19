@interface MTMLPlaylist
+ (id)playlistWithMPPlaylist:(id)a3;
- (BOOL)isEmpty;
- (id)description;
- (void)addChild:(id)a3;
@end

@implementation MTMLPlaylist

+ (id)playlistWithMPPlaylist:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [NSSet setWithObjects:MPMediaPlaylistPropertyName, MPMediaEntityPropertyPersistentID, MPMediaPlaylistPropertyParentPersistentID, MPMediaPlaylistPropertyIsFolder, MPMediaPlaylistPropertyPlaylistAttributes, MPMediaPlaylistPropertyIsHidden, 0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D27D0;
  v8[3] = &unk_1004D9F90;
  v6 = v4;
  v9 = v6;
  [v3 enumerateValuesForProperties:v5 usingBlock:v8];

  [v6 setPlaylist:v3];

  return v6;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v8 = v4;
  if (!children)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_children;
    self->_children = v6;

    v4 = v8;
    children = self->_children;
  }

  [(NSMutableArray *)children addObject:v4];
}

- (BOOL)isEmpty
{
  if (!self->_cachedEmpty)
  {
    if ([(MTMLPlaylist *)self isFolder]&& ![(NSMutableArray *)self->_children count])
    {
      v3 = 1;
    }

    else
    {
      if (![(MTMLPlaylist *)self isFolder])
      {
        v3 = 0;
        self->_empty = 0;
LABEL_20:
        self->_cachedEmpty = 1;
        return v3;
      }

      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = self->_children;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        while (2)
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            if (![*(*(&v10 + 1) + 8 * v8) isEmpty])
            {
              v3 = 0;
              goto LABEL_17;
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v3 = 1;
LABEL_17:
    }

    self->_empty = v3;
    goto LABEL_20;
  }

  return self->_empty;
}

- (id)description
{
  v3 = [(MTMLPlaylist *)self mediaLibraryId];
  v4 = [(MTMLPlaylist *)self name];
  v5 = [NSNumber numberWithBool:[(MTMLPlaylist *)self isFolder]];
  v6 = [NSString stringWithFormat:@"[%@] %@ %@", v3, v4, v5];

  return v6;
}

@end