@interface ATXHomeScreenEventMetadata
- (ATXHomeScreenEventMetadata)initWithCoder:(id)a3;
- (ATXHomeScreenEventMetadata)initWithPageIndex:(id)a3 suggestedPageType:(int64_t)a4 stacks:(id)a5 widgetsInStack:(id)a6 isSuggestionInAddWidgetSheet:(id)a7 isWidgetInTodayView:(id)a8 visibleRect:(id)a9 engagedUrl:(id)a10;
- (ATXHomeScreenEventMetadata)initWithProto:(id)a3;
- (ATXHomeScreenEventMetadata)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXHomeScreenEventMetadata:(id)a3;
- (NSDictionary)stacks;
- (id)dictionaryRepresentation;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setStacks:(id)a3;
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

  v10 = [(ATXHomeScreenEventMetadata *)self isSuggestionInAddWidgetSheet];

  if (v10)
  {
    v11 = [(ATXHomeScreenEventMetadata *)self isSuggestionInAddWidgetSheet];
    -[ATXPBHomeScreenEventMetadata setIsSuggestionInAddWidgetSheet:](v3, [v11 BOOLValue]);
  }

  isWidgetInTodayView = self->_isWidgetInTodayView;
  if (isWidgetInTodayView)
  {
    [(ATXPBHomeScreenEventMetadata *)v3 setIsWidgetInTodayView:?];
  }

  v13 = [(ATXCGRectWrapper *)self->_visibleRect proto];
  [(ATXPBHomeScreenEventMetadata *)v3 setVisibleRect:v13];

  v14 = [(NSURL *)self->_engagedUrl absoluteString];
  [(ATXPBHomeScreenEventMetadata *)v3 setEngagedUrl:v14];

  isStalenessRotation = self->_isStalenessRotation;
  if (isStalenessRotation)
  {
    [(ATXPBHomeScreenEventMetadata *)v3 setIsStalenessRotation:?];
  }

  return v3;
}

- (ATXHomeScreenEventMetadata)initWithPageIndex:(id)a3 suggestedPageType:(int64_t)a4 stacks:(id)a5 widgetsInStack:(id)a6 isSuggestionInAddWidgetSheet:(id)a7 isWidgetInTodayView:(id)a8 visibleRect:(id)a9 engagedUrl:(id)a10
{
  v34 = a3;
  v16 = a5;
  v17 = a6;
  v33 = a7;
  v32 = a8;
  v18 = a9;
  v19 = a10;
  v35.receiver = self;
  v35.super_class = ATXHomeScreenEventMetadata;
  v20 = [(ATXHomeScreenEventMetadata *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_pageIndex, a3);
    v22 = objc_opt_new();
    stackIds = v21->_stackIds;
    v21->_stackIds = v22;

    v24 = objc_opt_new();
    widgets = v21->_widgets;
    v21->_widgets = v24;

    v26 = [v17 copy];
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

    objc_storeStrong(&v21->_isSuggestionInAddWidgetSheet, a7);
    objc_storeStrong(&v21->_isWidgetInTodayView, a8);
    objc_storeStrong(&v21->_visibleRect, a9);
    objc_storeStrong(&v21->_engagedUrl, a10);
    v21->_suggestedPageType = a4;
  }

  [(ATXHomeScreenEventMetadata *)v21 setStacks:v16, a4];

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

- (void)setStacks:(id)a3
{
  stackIds = self->_stackIds;
  v5 = a3;
  [(NSMutableArray *)stackIds removeAllObjects];
  [(NSMutableArray *)self->_widgets removeAllObjects];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__ATXHomeScreenEventMetadata_setStacks___block_invoke;
  v6[3] = &unk_1E80C4BE0;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

void __40__ATXHomeScreenEventMetadata_setStacks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  [v5 addObject:a2];
  [*(*(a1 + 32) + 16) addObject:v6];
}

- (ATXHomeScreenEventMetadata)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBHomeScreenEventMetadata alloc] initWithData:v4];

    self = [(ATXHomeScreenEventMetadata *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXHomeScreenEventMetadata)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXPBHomeScreenEventMetadata *)v5 widgetIdentifiables];
      v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_79];

      v8 = [(ATXPBHomeScreenEventMetadata *)v5 widgetInStackIdentifiables];
      v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_21_1];

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

        v13 = [(ATXPBHomeScreenEventMetadata *)v5 bundleIds];
        v14 = [v13 copy];
        bundleIds = v10->_bundleIds;
        v10->_bundleIds = v14;

        v10->_suggestedPageType = [(ATXPBHomeScreenEventMetadata *)v5 suggestedPageType];
        v16 = [(ATXPBHomeScreenEventMetadata *)v5 stackIds];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
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
        v32 = [(ATXPBHomeScreenEventMetadata *)v5 visibleRect];
        v33 = [(ATXCGRectWrapper *)v31 initWithProto:v32];
        visibleRect = v10->_visibleRect;
        v10->_visibleRect = v33;

        v35 = [(ATXPBHomeScreenEventMetadata *)v5 engagedUrl];

        if (v35)
        {
          v36 = MEMORY[0x1E695DFF8];
          v37 = [(ATXPBHomeScreenEventMetadata *)v5 engagedUrl];
          v38 = [v36 URLWithString:v37];
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

      v19 = self;
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenEventMetadata *)self initWithProto:v5];
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
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
  v2 = [(ATXHomeScreenEventMetadata *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXHomeScreenEventMetadata *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXHomeScreenEventMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenEventMetadata *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenEventMetadata *)self isEqualToATXHomeScreenEventMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenEventMetadata:(id)a3
{
  v4 = a3;
  v5 = self->_pageIndex;
  v6 = v5;
  if (v5 == v4[3])
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
  if (v8 == v4[1])
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
  if (v11 == v4[2])
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
  if (v14 == v4[5])
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
  if (v17 == v4[7])
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
  if (v20 == v4[8])
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
  if (v23 == v4[9])
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
  if (v28 == v4[10])
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
  v4 = [(ATXHomeScreenEventMetadata *)self stacks];
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
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
        v13 = [v12 dictionaryRepresentation];
        [v5 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v14 = [(ATXHomeScreenEventMetadata *)self widgetsInStack];
  v15 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_38];

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

  v23 = [(NSURL *)self->_engagedUrl absoluteString];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
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