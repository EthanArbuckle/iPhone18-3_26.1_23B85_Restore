@interface ATXDocumentCategory
+ (id)localizedStringForCategoryID:(unint64_t)a3;
- (ATXDocumentCategory)initWithCategoryID:(unint64_t)a3 documentURLs:(id)a4;
- (id)description;
@end

@implementation ATXDocumentCategory

- (ATXDocumentCategory)initWithCategoryID:(unint64_t)a3 documentURLs:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ATXDocumentCategory;
  v7 = [(ATXDocumentCategory *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_categoryID = a3;
    v9 = [v6 copy];
    documentURLs = v8->_documentURLs;
    v8->_documentURLs = v9;
  }

  return v8;
}

+ (id)localizedStringForCategoryID:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 == 2)
  {
    v6 = @"RECENT_DOCUMENTS";
    v7 = @"Recents";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = @"DOCUMENT_SUGGESTIONS";
    v7 = @"Suggestions";
LABEL_5:
    v8 = [v4 localizedStringForKey:v6 value:v7 table:0];
    goto LABEL_7;
  }

  v8 = @"Unknown";
LABEL_7:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() localizedStringForCategoryID:{-[ATXDocumentCategory categoryID](self, "categoryID")}];
  v5 = [(ATXDocumentCategory *)self documentURLs];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

@end