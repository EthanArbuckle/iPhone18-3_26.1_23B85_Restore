@interface ATXDocumentCategory
+ (id)localizedStringForCategoryID:(unint64_t)d;
- (ATXDocumentCategory)initWithCategoryID:(unint64_t)d documentURLs:(id)ls;
- (id)description;
@end

@implementation ATXDocumentCategory

- (ATXDocumentCategory)initWithCategoryID:(unint64_t)d documentURLs:(id)ls
{
  lsCopy = ls;
  v12.receiver = self;
  v12.super_class = ATXDocumentCategory;
  v7 = [(ATXDocumentCategory *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_categoryID = d;
    v9 = [lsCopy copy];
    documentURLs = v8->_documentURLs;
    v8->_documentURLs = v9;
  }

  return v8;
}

+ (id)localizedStringForCategoryID:(unint64_t)d
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (d == 2)
  {
    v6 = @"RECENT_DOCUMENTS";
    v7 = @"Recents";
    goto LABEL_5;
  }

  if (d == 1)
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
  documentURLs = [(ATXDocumentCategory *)self documentURLs];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, documentURLs];

  return v6;
}

@end