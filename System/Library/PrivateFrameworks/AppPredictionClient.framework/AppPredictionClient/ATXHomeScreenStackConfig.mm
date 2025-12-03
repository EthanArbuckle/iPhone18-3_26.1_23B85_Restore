@interface ATXHomeScreenStackConfig
- (ATXHomeScreenPage)page;
- (ATXHomeScreenStackConfig)init;
- (ATXHomeScreenStackConfig)initWithCoder:(id)coder;
- (BOOL)isAppPredictionPanel;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPinnedSuggestionsWidget;
- (id)compactDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionaryRepresentation:(id)representation;
- (unint64_t)hash;
- (unint64_t)numberOfLeafIconSpots;
- (void)_updateWidgetBackpointers;
- (void)assignWidgetSpaceCoordinateWithRow:(int64_t)row column:(int64_t)column;
- (void)encodeWithCoder:(id)coder;
- (void)setPage:(id)page;
- (void)setWidgets:(id)widgets;
@end

@implementation ATXHomeScreenStackConfig

- (void)_updateWidgetBackpointers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_widgets;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        page = [(ATXHomeScreenStackConfig *)self page];
        [v8 setPage:page];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (ATXHomeScreenPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (ATXHomeScreenStackConfig)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenStackConfig;
  v2 = [(ATXHomeScreenStackConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_allowsNewWidget = 256;
    v4 = v2;
  }

  return v3;
}

- (BOOL)isAppPredictionPanel
{
  isPinnedWidget = [(ATXHomeScreenStackConfig *)self isPinnedWidget];
  if (isPinnedWidget)
  {
    firstObject = [(NSArray *)self->_widgets firstObject];
    extensionBundleId = [firstObject extensionBundleId];
    v6 = [extensionBundleId isEqualToString:@"com.apple.proactive.appprediction.panel"];

    LOBYTE(isPinnedWidget) = v6;
  }

  return isPinnedWidget;
}

- (BOOL)isPinnedSuggestionsWidget
{
  isPinnedWidget = [(ATXHomeScreenStackConfig *)self isPinnedWidget];
  if (isPinnedWidget)
  {
    firstObject = [(NSArray *)self->_widgets firstObject];
    extensionBundleId = [firstObject extensionBundleId];
    v6 = [extensionBundleId isEqualToString:*MEMORY[0x1E698AFC0]];

    LOBYTE(isPinnedWidget) = v6;
  }

  return isPinnedWidget;
}

- (unint64_t)numberOfLeafIconSpots
{
  isiPad = [MEMORY[0x1E69C5CF8] isiPad];
  result = [(ATXHomeScreenStackConfig *)self stackLayoutSize];
  if (result > 1)
  {
    switch(result)
    {
      case 2uLL:
        v5 = isiPad == 0;
        v6 = 16;
        v7 = 4;
        break;
      case 3uLL:
        v5 = isiPad == 0;
        v6 = 24;
        v7 = 6;
        break;
      case 4uLL:
        v5 = isiPad == 0;
        v6 = 32;
        v7 = 8;
        break;
      default:
        return result;
    }

LABEL_11:
    if (v5)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v5 = isiPad == 0;
    v6 = 8;
    v7 = 2;
    goto LABEL_11;
  }

  if (isiPad)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (ATXHomeScreenStackConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ATXHomeScreenStackConfig;
  v5 = [(ATXHomeScreenStackConfig *)&v12 init];
  if (v5)
  {
    -[ATXHomeScreenStackConfig setAllowsSmartRotate:](v5, "setAllowsSmartRotate:", [coderCopy decodeBoolForKey:@"allowsSmartRotate"]);
    -[ATXHomeScreenStackConfig setAllowsNewWidget:](v5, "setAllowsNewWidget:", [coderCopy decodeBoolForKey:@"allowsNewWidget"]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"widgets"];
    [(ATXHomeScreenStackConfig *)v5 setWidgets:v9];

    -[ATXHomeScreenStackConfig setStackLayoutSize:](v5, "setStackLayoutSize:", [coderCopy decodeIntegerForKey:@"stackLayoutSize"]);
    -[ATXHomeScreenStackConfig setCoordinateRow:](v5, "setCoordinateRow:", [coderCopy decodeIntegerForKey:@"coordinateRow"]);
    -[ATXHomeScreenStackConfig setCoordinateColumn:](v5, "setCoordinateColumn:", [coderCopy decodeIntegerForKey:@"coordinateColumn"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(ATXHomeScreenStackConfig *)v5 setIdentifier:v10];
  }

  return v5;
}

- (void)setPage:(id)page
{
  obj = page;
  WeakRetained = objc_loadWeakRetained(&self->_page);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_page, obj);
    [(ATXHomeScreenStackConfig *)self _updateWidgetBackpointers];
    v5 = obj;
  }
}

- (void)setWidgets:(id)widgets
{
  if (self->_widgets != widgets)
  {
    v5 = [widgets copy];
    widgets = self->_widgets;
    self->_widgets = v5;

    [(ATXHomeScreenStackConfig *)self _updateWidgetBackpointers];
  }
}

- (void)assignWidgetSpaceCoordinateWithRow:(int64_t)row column:(int64_t)column
{
  v7 = [MEMORY[0x1E69C5CF8] isiPad] ^ 1;
  [(ATXHomeScreenStackConfig *)self setCoordinateRow:row << v7];

  [(ATXHomeScreenStackConfig *)self setCoordinateColumn:column << v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ATXHomeScreenStackConfig allowsNewWidget](self forKey:{"allowsNewWidget"), @"allowsNewWidget"}];
  [coderCopy encodeBool:-[ATXHomeScreenStackConfig allowsSmartRotate](self forKey:{"allowsSmartRotate"), @"allowsSmartRotate"}];
  widgets = [(ATXHomeScreenStackConfig *)self widgets];
  [coderCopy encodeObject:widgets forKey:@"widgets"];

  [coderCopy encodeInteger:-[ATXHomeScreenStackConfig stackLayoutSize](self forKey:{"stackLayoutSize"), @"stackLayoutSize"}];
  [coderCopy encodeInteger:-[ATXHomeScreenStackConfig coordinateRow](self forKey:{"coordinateRow"), @"coordinateRow"}];
  [coderCopy encodeInteger:-[ATXHomeScreenStackConfig coordinateColumn](self forKey:{"coordinateColumn"), @"coordinateColumn"}];
  identifier = [(ATXHomeScreenStackConfig *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (unint64_t)hash
{
  identifier = [(ATXHomeScreenStackConfig *)self identifier];
  v4 = [identifier hash];

  return [(ATXHomeScreenStackConfig *)self stackLayoutSize]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;
  if (self->_allowsNewWidget != [(ATXHomeScreenStackConfig *)v5 allowsNewWidget]|| self->_allowsSmartRotate != [(ATXHomeScreenStackConfig *)v5 allowsSmartRotate]|| [(ATXHomeScreenStackConfig *)v5 stackLayoutSize]!= self->_stackLayoutSize || [(ATXHomeScreenStackConfig *)v5 coordinateRow]!= self->_coordinateRow || [(ATXHomeScreenStackConfig *)v5 coordinateColumn]!= self->_coordinateColumn)
  {
    goto LABEL_10;
  }

  v6 = self->_widgets;
  v7 = v6;
  if (v6 == v5->_widgets)
  {

    goto LABEL_16;
  }

  v8 = [(NSArray *)v6 isEqual:?];

  if (v8)
  {
LABEL_16:
    v11 = self->_identifier;
    v12 = v11;
    if (v11 == v5->_identifier)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(NSString *)v11 isEqual:?];
    }

    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

LABEL_14:
  return v9;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Identifier: %@;", self->_identifier];
  [v3 appendFormat:@"Allows new widget: %d; ", self->_allowsNewWidget];
  [v3 appendFormat:@"Allows smart rotate: %d; ", self->_allowsSmartRotate];
  [v3 appendFormat:@"Widgets: %@; ", self->_widgets];
  [v3 appendFormat:@"Layout size: %lu; ", self->_stackLayoutSize];
  [v3 appendFormat:@"Row: %lu, Column: %lu; ", self->_coordinateRow, self->_coordinateColumn];

  return v3;
}

- (id)compactDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendFormat:@"Id: %@; ", self->_identifier];
  [v3 appendFormat:@"N+1?: %d; ", self->_allowsNewWidget];
  [v3 appendFormat:@"Rotation?: %d; ", self->_allowsSmartRotate];
  [v3 appendFormat:@"Widgets:[\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  obj = self->_widgets;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        extensionBundleId = [v8 extensionBundleId];
        widgetKind = [v8 widgetKind];
        intent = [v8 intent];
        widgetUniqueId = [v8 widgetUniqueId];
        [v3 appendFormat:@"  %@ : %@ : hasIntent=%d : %@\n", extensionBundleId, widgetKind, intent != 0, widgetUniqueId];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [v3 appendFormat:@"]; "];
  [v3 appendFormat:@"Layout size: %lu; ", selfCopy->_stackLayoutSize];
  [v3 appendFormat:@"Row: %lu, Column: %lu; ", selfCopy->_coordinateRow, selfCopy->_coordinateColumn];

  return v3;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_widgets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addObject:dictionaryRepresentation];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsNewWidget];
  [v3 setObject:v11 forKeyedSubscript:@"allowsNewWidget"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsSmartRotate];
  [v3 setObject:v12 forKeyedSubscript:@"allowsSmartRotate"];

  [v3 setObject:v4 forKeyedSubscript:@"widgets"];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_stackLayoutSize];
  [v3 setObject:v13 forKeyedSubscript:@"stackLayoutSize"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_coordinateRow];
  [v3 setObject:v14 forKeyedSubscript:@"coordinateRow"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_coordinateColumn];
  [v3 setObject:v15 forKeyedSubscript:@"coordinateColumn"];

  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v16 = [v3 copy];

  return v16;
}

- (id)initFromDictionaryRepresentation:(id)representation
{
  v31 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v29.receiver = self;
  v29.super_class = ATXHomeScreenStackConfig;
  v5 = [(ATXHomeScreenStackConfig *)&v29 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"allowsNewWidget"];
    v5->_allowsNewWidget = [v6 BOOLValue];

    v7 = [representationCopy objectForKeyedSubscript:@"allowsSmartRotate"];
    v5->_allowsSmartRotate = [v7 BOOLValue];

    v8 = [representationCopy objectForKeyedSubscript:@"stackLayoutSize"];
    v5->_stackLayoutSize = [v8 unsignedIntegerValue];

    v9 = [representationCopy objectForKeyedSubscript:@"coordinateRow"];
    v5->_coordinateRow = [v9 unsignedIntegerValue];

    v10 = [representationCopy objectForKeyedSubscript:@"coordinateColumn"];
    v5->_coordinateColumn = [v10 unsignedIntegerValue];

    v11 = [representationCopy objectForKeyedSubscript:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [representationCopy objectForKeyedSubscript:@"widgets"];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          v21 = [ATXHomeScreenWidgetIdentifiable alloc];
          v22 = [(ATXHomeScreenWidgetIdentifiable *)v21 initFromDictionaryRepresentation:v20, v25];
          if (v22)
          {
            [v14 addObject:v22];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    [(ATXHomeScreenStackConfig *)v5 setWidgets:v14];
    v23 = v5;
  }

  return v5;
}

@end