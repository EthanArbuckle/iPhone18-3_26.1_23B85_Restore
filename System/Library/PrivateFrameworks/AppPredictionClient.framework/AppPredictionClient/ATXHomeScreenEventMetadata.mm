@interface ATXHomeScreenEventMetadata
- (ATXHomeScreenEventMetadata)initWithCoder:(id)coder;
- (ATXHomeScreenEventMetadata)initWithPageIndex:(id)index suggestedPageType:(int64_t)type stacks:(id)stacks widgetsInStack:(id)stack isSuggestionInAddWidgetSheet:(id)sheet isWidgetInTodayView:(id)view visibleRect:(id)rect engagedUrl:(id)self0;
- (ATXHomeScreenEventMetadata)initWithProto:(id)proto;
- (ATXHomeScreenEventMetadata)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenEventMetadata:(id)metadata;
- (NSDictionary)stacks;
- (id)dictionaryRepresentation;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setStacks:(id)stacks;
@end

@implementation ATXHomeScreenEventMetadata

- (id)proto
{
  v3 = objc_opt_new();
  pageIndex = self->_pageIndex;
  if (pageIndex)
  {
    [(ATXPBHomeScreenEventMetadata *)v3 setPageIndex:?];
  }

  v5 = [(NSArray *)self->_bundleIds mutableCopy];
  [(ATXPBHomeScreenEventMetadata *)v3 setBundleIds:v5];

  [(ATXPBHomeScreenEventMetadata *)v3 setStackIds:?];
  [(ATXPBHomeScreenEventMetadata *)v3 setSuggestedPageType:?];
  v6 = [(NSMutableArray *)self->_widgets _pas_mappedArrayWithTransform:&__block_literal_global_27_2];
  v7 = [(NSArray *)self->_widgetsInStack _pas_mappedArrayWithTransform:&__block_literal_global_29_0];
  v8 = [v6 mutableCopy];
  [(ATXPBHomeScreenEventMetadata *)v3 setWidgetIdentifiables:v8];

  v9 = [v7 mutableCopy];
  [(ATXPBHomeScreenEventMetadata *)v3 setWidgetInStackIdentifiables:v9];

  isSuggestionInAddWidgetSheet = [(ATXHomeScreenEventMetadata *)self isSuggestionInAddWidgetSheet];

  if (isSuggestionInAddWidgetSheet)
  {
    isSuggestionInAddWidgetSheet2 = [(ATXHomeScreenEventMetadata *)self isSuggestionInAddWidgetSheet];
    -[ATXPBHomeScreenEventMetadata setIsSuggestionInAddWidgetSheet:](v3, [isSuggestionInAddWidgetSheet2 BOOLValue]);
  }

  isWidgetInTodayView = self->_isWidgetInTodayView;
  if (isWidgetInTodayView)
  {
    [(ATXPBHomeScreenEventMetadata *)v3 setIsWidgetInTodayView:?];
  }

  proto = [(ATXCGRectWrapper *)self->_visibleRect proto];
  [(ATXPBHomeScreenEventMetadata *)v3 setVisibleRect:proto];

  absoluteString = [(NSURL *)self->_engagedUrl absoluteString];
  [(ATXPBHomeScreenEventMetadata *)v3 setEngagedUrl:absoluteString];

  isStalenessRotation = self->_isStalenessRotation;
  if (isStalenessRotation)
  {
    [(ATXPBHomeScreenEventMetadata *)v3 setIsStalenessRotation:?];
  }

  return v3;
}

- (ATXHomeScreenEventMetadata)initWithPageIndex:(id)index suggestedPageType:(int64_t)type stacks:(id)stacks widgetsInStack:(id)stack isSuggestionInAddWidgetSheet:(id)sheet isWidgetInTodayView:(id)view visibleRect:(id)rect engagedUrl:(id)self0
{
  indexCopy = index;
  stacksCopy = stacks;
  stackCopy = stack;
  sheetCopy = sheet;
  viewCopy = view;
  rectCopy = rect;
  urlCopy = url;
  v35.receiver = self;
  v35.super_class = ATXHomeScreenEventMetadata;
  v20 = [(ATXHomeScreenEventMetadata *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_pageIndex, index);
    v22 = objc_opt_new();
    stackIds = v21->_stackIds;
    v21->_stackIds = v22;

    v24 = objc_opt_new();
    widgets = v21->_widgets;
    v21->_widgets = v24;

    v26 = [stackCopy copy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = objc_opt_new();
    }

    widgetsInStack = v21->_widgetsInStack;
    v21->_widgetsInStack = v28;

    objc_storeStrong(&v21->_isSuggestionInAddWidgetSheet, sheet);
    objc_storeStrong(&v21->_isWidgetInTodayView, view);
    objc_storeStrong(&v21->_visibleRect, rect);
    objc_storeStrong(&v21->_engagedUrl, url);
    v21->_suggestedPageType = type;
  }

  [(ATXHomeScreenEventMetadata *)v21 setStacks:stacksCopy, type];

  return v21;
}

- (NSDictionary)stacks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = objc_opt_new();
  stackIds = self->_stackIds;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__ATXHomeScreenEventMetadata_stacks__block_invoke;
  v6[3] = &unk_1E80C4BB8;
  v6[4] = self;
  v6[5] = &v7;
  [(NSMutableArray *)stackIds enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__ATXHomeScreenEventMetadata_stacks__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if ([*(*(a1 + 32) + 16) count] > a3)
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndex:a3];
    [*(*(*(a1 + 40) + 8) + 40) setValue:v5 forKey:v6];
  }
}

- (void)setStacks:(id)stacks
{
  stackIds = self->_stackIds;
  stacksCopy = stacks;
  [(NSMutableArray *)stackIds removeAllObjects];
  [(NSMutableArray *)self->_widgets removeAllObjects];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__ATXHomeScreenEventMetadata_setStacks___block_invoke;
  v6[3] = &unk_1E80C4BE0;
  v6[4] = self;
  [stacksCopy enumerateKeysAndObjectsUsingBlock:v6];
}

void __40__ATXHomeScreenEventMetadata_setStacks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  [v5 addObject:a2];
  [*(*(a1 + 32) + 16) addObject:v6];
}

- (ATXHomeScreenEventMetadata)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBHomeScreenEventMetadata alloc] initWithData:dataCopy];

    self = [(ATXHomeScreenEventMetadata *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXHomeScreenEventMetadata)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      widgetIdentifiables = [(ATXPBHomeScreenEventMetadata *)v5 widgetIdentifiables];
      v7 = [widgetIdentifiables _pas_mappedArrayWithTransform:&__block_literal_global_79];

      widgetInStackIdentifiables = [(ATXPBHomeScreenEventMetadata *)v5 widgetInStackIdentifiables];
      v9 = [widgetInStackIdentifiables _pas_mappedArrayWithTransform:&__block_literal_global_21_1];

      v43.receiver = self;
      v43.super_class = ATXHomeScreenEventMetadata;
      v10 = [(ATXHomeScreenEventMetadata *)&v43 init];
      if (v10)
      {
        if ([(ATXPBHomeScreenEventMetadata *)v5 hasPageIndex])
        {
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[ATXPBHomeScreenEventMetadata pageIndex](v5)];
          pageIndex = v10->_pageIndex;
          v10->_pageIndex = v11;
        }

        bundleIds = [(ATXPBHomeScreenEventMetadata *)v5 bundleIds];
        v14 = [bundleIds copy];
        bundleIds = v10->_bundleIds;
        v10->_bundleIds = v14;

        v10->_suggestedPageType = [(ATXPBHomeScreenEventMetadata *)v5 suggestedPageType];
        stackIds = [(ATXPBHomeScreenEventMetadata *)v5 stackIds];
        v17 = stackIds;
        if (stackIds)
        {
          v18 = stackIds;
        }

        else
        {
          v18 = objc_opt_new();
        }

        stackIds = v10->_stackIds;
        v10->_stackIds = v18;

        v21 = [v7 mutableCopy];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = objc_opt_new();
        }

        widgets = v10->_widgets;
        v10->_widgets = v23;

        if (v9)
        {
          v25 = v9;
        }

        else
        {
          v25 = objc_opt_new();
        }

        widgetsInStack = v10->_widgetsInStack;
        v10->_widgetsInStack = v25;

        if ([(ATXPBHomeScreenEventMetadata *)v5 hasIsSuggestionInAddWidgetSheet])
        {
          v27 = [MEMORY[0x1E696AD98] numberWithBool:-[ATXPBHomeScreenEventMetadata isSuggestionInAddWidgetSheet](v5)];
          isSuggestionInAddWidgetSheet = v10->_isSuggestionInAddWidgetSheet;
          v10->_isSuggestionInAddWidgetSheet = v27;
        }

        if ([(ATXPBHomeScreenEventMetadata *)v5 hasIsWidgetInTodayView])
        {
          v29 = [MEMORY[0x1E696AD98] numberWithBool:-[ATXPBHomeScreenEventMetadata isWidgetInTodayView](v5)];
          isWidgetInTodayView = v10->_isWidgetInTodayView;
          v10->_isWidgetInTodayView = v29;
        }

        v31 = [ATXCGRectWrapper alloc];
        visibleRect = [(ATXPBHomeScreenEventMetadata *)v5 visibleRect];
        v33 = [(ATXCGRectWrapper *)v31 initWithProto:visibleRect];
        visibleRect = v10->_visibleRect;
        v10->_visibleRect = v33;

        engagedUrl = [(ATXPBHomeScreenEventMetadata *)v5 engagedUrl];

        if (engagedUrl)
        {
          v36 = MEMORY[0x1E695DFF8];
          engagedUrl2 = [(ATXPBHomeScreenEventMetadata *)v5 engagedUrl];
          v38 = [v36 URLWithString:engagedUrl2];
          engagedUrl = v10->_engagedUrl;
          v10->_engagedUrl = v38;
        }

        if ([(ATXPBHomeScreenEventMetadata *)v5 hasIsStalenessRotation])
        {
          v40 = [MEMORY[0x1E696AD98] numberWithBool:-[ATXPBHomeScreenEventMetadata isStalenessRotation](v5)];
          isStalenessRotation = v10->_isStalenessRotation;
          v10->_isStalenessRotation = v40;
        }
      }

      self = v10;

      selfCopy = self;
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenEventMetadata *)self initWithProto:v5];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

ATXHomeScreenWidgetIdentifiable *__44__ATXHomeScreenEventMetadata_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXHomeScreenWidgetIdentifiable alloc] initWithProto:v2];

  return v3;
}

ATXHomeScreenWidgetIdentifiable *__44__ATXHomeScreenEventMetadata_initWithProto___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXHomeScreenWidgetIdentifiable alloc] initWithProto:v2];

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXHomeScreenEventMetadata *)self proto];
  data = [proto data];

  return data;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXHomeScreenEventMetadata *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXHomeScreenEventMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenEventMetadata *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenEventMetadata *)self isEqualToATXHomeScreenEventMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = self->_pageIndex;
  v6 = v5;
  if (v5 == metadataCopy[3])
  {
  }

  else
  {
    v7 = [(NSNumber *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = self->_stackIds;
  v9 = v8;
  if (v8 == metadataCopy[1])
  {
  }

  else
  {
    v10 = [(NSMutableArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v11 = self->_widgets;
  v12 = v11;
  if (v11 == metadataCopy[2])
  {
  }

  else
  {
    v13 = [(NSMutableArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v14 = self->_widgetsInStack;
  v15 = v14;
  if (v14 == metadataCopy[5])
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = self->_isSuggestionInAddWidgetSheet;
  v18 = v17;
  if (v17 == metadataCopy[7])
  {
  }

  else
  {
    v19 = [(NSNumber *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v20 = self->_isWidgetInTodayView;
  v21 = v20;
  if (v20 == metadataCopy[8])
  {
  }

  else
  {
    v22 = [(NSNumber *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v23 = self->_visibleRect;
  v24 = v23;
  if (v23 == metadataCopy[9])
  {
  }

  else
  {
    v25 = [(ATXCGRectWrapper *)v23 isEqual:?];

    if (!v25)
    {
LABEL_27:
      v26 = 0;
      goto LABEL_28;
    }
  }

  v28 = self->_engagedUrl;
  v29 = v28;
  if (v28 == metadataCopy[10])
  {
    v26 = 1;
  }

  else
  {
    v26 = [(NSURL *)v28 isEqual:?];
  }

LABEL_28:
  return v26;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_pageIndex hash];
  v4 = [(NSMutableArray *)self->_stackIds hash]- v3 + 32 * v3;
  v5 = [(NSMutableArray *)self->_widgets hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_widgetsInStack hash]- v5 + 32 * v5;
  v7 = [(NSNumber *)self->_isSuggestionInAddWidgetSheet hash]- v6 + 32 * v6;
  v8 = [(NSNumber *)self->_isWidgetInTodayView hash]- v7 + 32 * v7;
  v9 = [(ATXCGRectWrapper *)self->_visibleRect hash]- v8 + 32 * v8;
  return [(NSURL *)self->_engagedUrl hash]- v9 + 32 * v9;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  stacks = [(ATXHomeScreenEventMetadata *)self stacks];
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = stacks;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        dictionaryRepresentation = [v12 dictionaryRepresentation];
        [v5 setObject:dictionaryRepresentation forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  widgetsInStack = [(ATXHomeScreenEventMetadata *)self widgetsInStack];
  v15 = [widgetsInStack _pas_mappedArrayWithTransform:&__block_literal_global_38];

  if (self->_pageIndex)
  {
    pageIndex = self->_pageIndex;
  }

  else
  {
    pageIndex = @"nil";
  }

  [v3 setObject:pageIndex forKeyedSubscript:@"pageIndex"];
  [v3 setObject:v5 forKeyedSubscript:@"stacks"];
  [v3 setObject:v15 forKeyedSubscript:@"widgetsInStack"];
  if (self->_isSuggestionInAddWidgetSheet)
  {
    isSuggestionInAddWidgetSheet = self->_isSuggestionInAddWidgetSheet;
  }

  else
  {
    isSuggestionInAddWidgetSheet = @"nil";
  }

  [v3 setObject:isSuggestionInAddWidgetSheet forKeyedSubscript:@"isSuggestionInAddWidgetSheet"];
  if (self->_suggestedPageType >= 0xC)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suggestedPageType];
  }

  else
  {
    v18 = off_1E80C4C40[self->_suggestedPageType & 0xF];
  }

  [v3 setObject:v18 forKeyedSubscript:@"suggestedPageType"];

  if (self->_isWidgetInTodayView)
  {
    isWidgetInTodayView = self->_isWidgetInTodayView;
  }

  else
  {
    isWidgetInTodayView = @"nil";
  }

  [v3 setObject:isWidgetInTodayView forKeyedSubscript:@"isWidgetInTodayView"];
  v20 = [(ATXCGRectWrapper *)self->_visibleRect description];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"nil";
  }

  [v3 setObject:v22 forKeyedSubscript:@"visibleRect"];

  absoluteString = [(NSURL *)self->_engagedUrl absoluteString];
  v24 = absoluteString;
  if (absoluteString)
  {
    v25 = absoluteString;
  }

  else
  {
    v25 = @"nil";
  }

  [v3 setObject:v25 forKeyedSubscript:@"engagedUrl"];

  v26 = [(NSArray *)self->_bundleIds componentsJoinedByString:@", "];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"nil";
  }

  [v3 setObject:v28 forKeyedSubscript:@"bundleIds"];

  return v3;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBHomeScreenEventMetadata proto", &v5, 0xCu);
}

@end