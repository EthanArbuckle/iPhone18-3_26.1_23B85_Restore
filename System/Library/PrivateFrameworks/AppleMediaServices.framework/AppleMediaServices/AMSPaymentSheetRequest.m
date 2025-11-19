@interface AMSPaymentSheetRequest
+ (id)attributedStringByRemovingPlaceholderTagsFromAttributedString:(id)a3;
+ (int64_t)imageTypeForURLResult:(id)a3;
- (AMSPaymentSheetRequest)init;
- (AMSPaymentSheetRequest)initWithCoder:(id)a3;
- (BOOL)isDesignVersionEqual:(id)a3;
- (BOOL)isDesignVersionEqualOrGreaterThan:(id)a3;
- (BOOL)isDesignVersionLessThan:(id)a3;
- (BOOL)requiresDelegateAuthentication;
- (CGImage)_createDefaultImageWithImageRef:(CGImage *)a3 size:(CGSize)a4 borderPath:(CGPath *)a5;
- (CGImage)_createImageForAssetConfiguration:(id)a3 outAssetScale:(float *)a4;
- (CGImage)_createImageMaskRefWithSize:(CGSize)a3 andPath:(CGPath *)a4;
- (CGImage)_createImageRefForAssetURL:(id)a3 size:(CGSize)a4 assetType:(int64_t)a5 outAssetScale:(float *)a6;
- (CGImage)_createImageRefForImageRef:(CGImage *)a3 withAdornmentStyle:(int64_t)a4 andDesignVersion:(id)a5;
- (CGImage)_createImageRefForImageSource:(CGImageSource *)a3 screenScale:(float)a4 outAssetScale:(float *)a5;
- (CGImage)_createImageRefForImageURL:(id)a3 outAssetScale:(float *)a4;
- (CGImage)_createImageRefForPDFURL:(id)a3 size:(CGSize)a4 outAssetScale:(float *)a5;
- (CGImage)_createImageRefWithURL:(id)a3 designVersion:(id)a4 adornmentStyle:(int64_t)a5 bag:(id)a6;
- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)a3 withPathRef:(CGPath *)a4 adornmentStyle:(int64_t)a5 andDesignVersion:(id)a6;
- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (CGImage)_createRatingImageWithStringValue:(id)a3 assetScale:(float *)a4;
- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)a3 iconWidth:(double)a4 iconHeight:(double)a5;
- (CGRect)_rectWithAspectRatio:(CGSize)a3 insideRect:(CGRect)a4;
- (NSDictionary)objectForLogging;
- (id)_amsContentItemsForFlexibleList:(id)a3 assetCache:(id)a4 designVersion:(id)a5 bag:(id)a6;
- (id)_attachInlineImagesToAttributedString:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)_attachLeadingItem:(id)a3 attributedString:(id)a4 designVersion:(id)a5;
- (id)_contentItemsForFlexibleList:(id)a3 assetCache:(id)a4 designVersion:(id)a5 bag:(id)a6;
- (id)_replaceImagePlaceholderTag:(id)a3 withAttributes:(id)a4 foregroundColor:(int64_t)a5 forAttributedString:(id)a6;
- (id)_replaceImagePlaceholderTag:(id)a3 withImageData:(id)a4 scale:(float)a5 tint:(BOOL)a6 forAttributedString:(id)a7;
- (id)_summaryItemsForAttributedList:(id)a3 assetCache:(id)a4 bag:(id)a5;
- (id)ams_amsContentItemForSalableInfoLabel:(id)a3 salableIconURL:(id)a4 salableIcon:(int64_t)a5 assetCache:(id)a6 designVersion:(id)a7 bag:(id)a8;
- (id)ams_contentItemForSalableInfoLabel:(id)a3 salableIconURL:(id)a4 salableIcon:(int64_t)a5 assetCache:(id)a6 designVersion:(id)a7 bag:(id)a8;
- (id)ams_createAMSContentItem:(id)a3 label:(id)a4 image:(CGImage *)a5 accessibilityIdentifier:(id)a6 padding:(id)a7;
- (id)ams_createAMSContentItemForRating;
- (id)ams_createAMSContentItemForSalableInfoWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createAMSContentItemsForFlexibleListWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createAMSContentItemsForPreScreenDialogWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createContentItemForAccount;
- (id)ams_createContentItemForDeviceName:(id)a3;
- (id)ams_createContentItemForRating;
- (id)ams_createContentItemForSalableInfoWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createContentItemsForFlexibleListWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createContentItemsForPreScreenDialogWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createSecondaryContentItemForSalableInfoWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createSecondaryContentItemsForFlexibleListWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5;
- (id)ams_createSummaryItems;
- (id)ams_createSummaryItemsForAttributedListWithAssetCache:(id)a3 bag:(id)a4;
- (unint64_t)ams_confirmationStyle;
- (unint64_t)ams_paymentRequestorType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentSheetRequest

- (unint64_t)ams_confirmationStyle
{
  v2 = [(AMSPaymentSheetRequest *)self confirmationTitle];
  if ((v2 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_193016A50[v2 - 1];
  }
}

- (unint64_t)ams_paymentRequestorType
{
  v2 = [(AMSPaymentSheetRequest *)self payee];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_193016A80[v2 - 1];
  }
}

+ (int64_t)imageTypeForURLResult:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForHTTPHeaderField:@"Content-Type"];
  v5 = [v3 response];

  v6 = [v5 URL];
  v7 = [v6 pathExtension];

  if (v4)
  {
    v8 = [MEMORY[0x1E6982C40] typeWithMIMEType:v4 conformingToType:*MEMORY[0x1E6982E30]];
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  if (v7)
  {
    v8 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v7 conformingToType:*MEMORY[0x1E6982E30]];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:
  if (v9 == *MEMORY[0x1E6982F28])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == *MEMORY[0x1E6982E58]);
  }

  return v10;
}

- (id)ams_createSummaryItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(AMSPaymentSheetRequest *)self paymentSummary];

  if (v4)
  {
    v5 = [(AMSPaymentSheetRequest *)self paymentSummary];
LABEL_3:
    v6 = v5;
    goto LABEL_6;
  }

  v7 = [(AMSPaymentSheetRequest *)self storeName];

  if (!v7)
  {
    v5 = AMSLocalizedString(@"CONFIRMATION_TITLE_PAY", 0);
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = AMSLocalizedString(@"CONFIRMATION_TITLE_PAY", 0);
  v10 = [(AMSPaymentSheetRequest *)self storeName];
  v6 = [v8 stringWithFormat:@"%@ %@", v9, v10];

LABEL_6:
  if ([(AMSPaymentSheetRequest *)self shouldUppercaseText])
  {
    v11 = [v6 localizedUppercaseString];

    v6 = v11;
  }

  v12 = [(AMSPaymentSheetRequest *)self priceSectionItems];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__AMSPaymentSheetRequest_PassKit__ams_createSummaryItems__block_invoke;
  v25[3] = &unk_1E73BA708;
  v13 = v3;
  v26 = v13;
  [v12 enumerateObjectsUsingBlock:v25];
  v14 = [(AMSPaymentSheetRequest *)self price];
  v15 = v14;
  v16 = &unk_1F0779898;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  PKPaymentSummaryItemClass = getPKPaymentSummaryItemClass();
  v19 = MEMORY[0x1E696AB90];
  [v17 decimalValue];

  v20 = [v19 decimalNumberWithDecimal:v24];
  v21 = [PKPaymentSummaryItemClass summaryItemWithLabel:v6 amount:v20];

  [v13 addObject:v21];
  if ([v13 count])
  {
    v22 = [v13 copy];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __57__AMSPaymentSheetRequest_PassKit__ams_createSummaryItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKPaymentSummaryItemClass = getPKPaymentSummaryItemClass();
  v5 = [v3 label];
  v6 = [MEMORY[0x1E696AB90] zero];
  v8 = [PKPaymentSummaryItemClass summaryItemWithLabel:v5 amount:v6];

  v7 = [v3 price];

  [v8 setLocalizedAmount:v7];
  [v8 setUseDarkColor:1];
  [*(a1 + 32) addObject:v8];
}

- (id)ams_createSummaryItemsForAttributedListWithAssetCache:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSPaymentSheetRequest *)self attributedList];
  v9 = [(AMSPaymentSheetRequest *)self _summaryItemsForAttributedList:v8 assetCache:v7 bag:v6];

  return v9;
}

- (id)ams_createContentItemForAccount
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AMSPaymentSheetRequest *)self accountHeader];
  if (v3)
  {
    v4 = [(AMSPaymentSheetRequest *)self account];
    v5 = [v4 username];

    v6 = [@"%%appleId%%" ams_replaceAccountPatternWithUsername:v5];
    if (v6)
    {
      v7 = objc_alloc_init(getPKPaymentContentItemClass());
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
      [v7 setTitle:v8];

      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
      [v7 setLabel:v9];
    }

    else
    {
      v10 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = [(AMSPaymentSheetRequest *)self logKey];
        v16 = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain or format account name", &v16, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ams_createContentItemForDeviceName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getPKPaymentContentItemClass());
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];

  [v4 setTitle:v5];
  [v4 setCentered:1];

  return v4;
}

- (id)ams_createAMSContentItemsForFlexibleListWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self flexList];
  v12 = [(AMSPaymentSheetRequest *)self _amsContentItemsForFlexibleList:v11 assetCache:v10 designVersion:v9 bag:v8];

  return v12;
}

- (id)ams_createContentItemsForFlexibleListWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self flexList];
  v12 = [(AMSPaymentSheetRequest *)self _contentItemsForFlexibleList:v11 assetCache:v10 designVersion:v9 bag:v8];

  return v12;
}

- (id)ams_createAMSContentItemsForPreScreenDialogWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self preSheetDialog];
  v12 = [(AMSPaymentSheetRequest *)self _amsContentItemsForFlexibleList:v11 assetCache:v10 designVersion:v9 bag:v8];

  return v12;
}

- (id)ams_createContentItemsForPreScreenDialogWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self preSheetDialog];
  v12 = [(AMSPaymentSheetRequest *)self _contentItemsForFlexibleList:v11 assetCache:v10 designVersion:v9 bag:v8];

  return v12;
}

- (id)ams_createAMSContentItemForRating
{
  v3 = [(AMSPaymentSheetRequest *)self ratingHeader];
  v4 = [(AMSPaymentSheetRequest *)self ratingValue];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    v6 = [(AMSPaymentSheetRequest *)self ams_createAMSContentItem:v7 label:v8 image:0 accessibilityIdentifier:0 padding:0];
  }

  return v6;
}

- (id)ams_createContentItemForRating
{
  v3 = [(AMSPaymentSheetRequest *)self ratingHeader];
  v4 = [(AMSPaymentSheetRequest *)self ratingValue];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = objc_alloc_init(getPKPaymentContentItemClass());
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
    [v6 setTitle:v7];

    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [v6 setLabel:v8];
  }

  return v6;
}

- (id)ams_createSecondaryContentItemsForFlexibleListWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self secondaryFlexList];
  v12 = [(AMSPaymentSheetRequest *)self _amsContentItemsForFlexibleList:v11 assetCache:v10 designVersion:v9 bag:v8];

  return v12;
}

- (id)ams_amsContentItemForSalableInfoLabel:(id)a3 salableIconURL:(id)a4 salableIcon:(int64_t)a5 assetCache:(id)a6 designVersion:(id)a7 bag:(id)a8
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v14)
  {
    if (v15)
    {
      if ([(AMSPaymentSheetRequest *)self payee]== 3 && a5 == 0)
      {
        v20 = 4;
      }

      else
      {
        v20 = a5;
      }

      v21 = [(AMSPaymentSheetRequest *)self _createImageRefWithURL:v15 designVersion:v17 adornmentStyle:v20 bag:v18];
      if (v21)
      {
        goto LABEL_16;
      }

      v22 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v31 = v24;
        v25 = [(AMSPaymentSheetRequest *)self logKey];
        *buf = 138543618;
        v33 = v24;
        v34 = 2114;
        v35 = v25;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load salable icon image", buf, 0x16u);
      }
    }

    v21 = 0;
LABEL_16:
    v26 = [(AMSPaymentSheetRequest *)self _attachInlineImagesToAttributedString:v14 designVersion:v17 bag:v18];

    v27 = [objc_opt_class() attributedStringByRemovingPlaceholderTagsFromAttributedString:v26];

    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F071BA78];
    v29 = [(AMSPaymentSheetRequest *)self ams_createAMSContentItem:v28 label:v27 image:v21 accessibilityIdentifier:0 padding:0];

    goto LABEL_18;
  }

  v29 = 0;
LABEL_18:

  return v29;
}

- (id)ams_contentItemForSalableInfoLabel:(id)a3 salableIconURL:(id)a4 salableIcon:(int64_t)a5 assetCache:(id)a6 designVersion:(id)a7 bag:(id)a8
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  if (v13)
  {
    v17 = objc_alloc_init(getPKPaymentContentItemClass());
    if (v14)
    {
      if ([(AMSPaymentSheetRequest *)self payee]== 3 && a5 == 0)
      {
        v19 = 4;
      }

      else
      {
        v19 = a5;
      }

      v20 = [(AMSPaymentSheetRequest *)self _createImageRefWithURL:v14 designVersion:v15 adornmentStyle:v19 bag:v16];
      if (v20)
      {
        v21 = v20;
        [v17 setImage:v20];
        CGImageRelease(v21);
      }

      else
      {
        v23 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v23)
        {
          v23 = +[AMSLogConfig sharedConfig];
        }

        v24 = [v23 OSLogObject];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v33 = v25;
          v26 = [(AMSPaymentSheetRequest *)self logKey];
          *buf = 138543618;
          v35 = v25;
          v36 = 2114;
          v37 = v26;
          _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load salable icon image", buf, 0x16u);
        }
      }
    }

    v27 = [(AMSPaymentSheetRequest *)self _attachInlineImagesToAttributedString:v13 designVersion:v15 bag:v16];

    v28 = [objc_opt_class() attributedStringByRemovingPlaceholderTagsFromAttributedString:v27];

    v29 = [(AMSPaymentSheetRequest *)self account];
    v30 = [v29 username];
    v22 = [v28 ams_replaceAccountPatternWithUsername:v30];

    v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F071BA78];
    [v17 setTitle:v31];

    [v17 setLabel:v22];
  }

  else
  {
    v17 = 0;
    v22 = 0;
  }

  return v17;
}

- (id)ams_createAMSContentItemForSalableInfoWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self salableInfoLabel];
  v12 = [(AMSPaymentSheetRequest *)self salableIconURL];
  v13 = [(AMSPaymentSheetRequest *)self ams_amsContentItemForSalableInfoLabel:v11 salableIconURL:v12 salableIcon:[(AMSPaymentSheetRequest *)self salableIcon] assetCache:v10 designVersion:v9 bag:v8];

  return v13;
}

- (id)ams_createSecondaryContentItemForSalableInfoWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self secondarySalableInfoLabel];
  v12 = [(AMSPaymentSheetRequest *)self secondarySalableIconURL];
  v13 = [(AMSPaymentSheetRequest *)self ams_amsContentItemForSalableInfoLabel:v11 salableIconURL:v12 salableIcon:[(AMSPaymentSheetRequest *)self secondarySalableIcon] assetCache:v10 designVersion:v9 bag:v8];

  return v13;
}

- (id)ams_createContentItemForSalableInfoWithAssetCache:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSPaymentSheetRequest *)self salableInfoLabel];
  v12 = [(AMSPaymentSheetRequest *)self salableIconURL];
  v13 = [(AMSPaymentSheetRequest *)self ams_contentItemForSalableInfoLabel:v11 salableIconURL:v12 salableIcon:[(AMSPaymentSheetRequest *)self salableIcon] assetCache:v10 designVersion:v9 bag:v8];

  return v13;
}

+ (id)attributedStringByRemovingPlaceholderTagsFromAttributedString:(id)a3
{
  v3 = [a3 mutableCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__AMSPaymentSheetRequest_PassKit__attributedStringByRemovingPlaceholderTagsFromAttributedString___block_invoke;
  aBlock[3] = &unk_1E73B4DF8;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v5[2](v5, @"%%image_");
  v5[2](v5, @"%%IMAGE_");
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v4];

  return v6;
}

void __97__AMSPaymentSheetRequest_PassKit__attributedStringByRemovingPlaceholderTagsFromAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) mutableString];
  v4 = [v3 rangeOfString:v9];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = v4;
    do
    {
      v7 = [v3 rangeOfString:@"%%" options:0 range:{v6 + 1, objc_msgSend(v3, "length") + ~v6}];
      [*(a1 + 32) replaceCharactersInRange:v6 withString:{v8 - v6 + v7, &stru_1F071BA78}];
      v5 = [*(a1 + 32) mutableString];

      v6 = [v5 rangeOfString:v9];
      v3 = v5;
    }

    while (v6 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (id)_attachInlineImagesToAttributedString:(id)a3 designVersion:(id)a4 bag:(id)a5
{
  v157 = *MEMORY[0x1E69E9840];
  v145 = a3;
  v142 = a4;
  v143 = a5;
  v8 = [(AMSPaymentSheetRequest *)self inlineImages];
  v9 = [v8 count];

  v144 = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0x1E73B0000uLL;
    allocator = *MEMORY[0x1E695E480];
    v130 = self;
    v131 = *MEMORY[0x1E6982F28];
    do
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v14 = [v12 stringWithFormat:@"%@", v13];

      v15 = [(AMSPaymentSheetRequest *)self inlineImages];
      v16 = [v15 objectAtIndexedSubscript:v10];

      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v146 = 0;
      if ([v16 isServerSupplied])
      {
        v18 = MEMORY[0x1E695DFF8];
        v19 = [v16 URLString];
        v20 = [v18 URLWithString:v19];

        v21 = [*(v11 + 3552) sharedPurchaseConfig];
        if (!v21)
        {
          v21 = [*(v11 + 3552) sharedConfig];
        }

        v22 = [v21 OSLogObject];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = objc_opt_class();
          v133 = v10;
          v24 = v17;
          v25 = v16;
          v26 = v14;
          v27 = v23;
          v28 = [(AMSPaymentSheetRequest *)self logKey];
          v29 = AMSLogableURL(v20);
          *buf = 138543874;
          v148 = v23;
          v149 = 2114;
          v150 = v28;
          v151 = 2114;
          v152 = v29;
          _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching server-supplied inline image at URL: %{public}@", buf, 0x20u);

          self = v130;
          v11 = 0x1E73B0000uLL;

          v14 = v26;
          v16 = v25;
          v17 = v24;
          v10 = v133;
        }

        v30 = [(AMSPaymentSheetRequest *)self _createImageRefWithURL:v20 designVersion:v142 adornmentStyle:0 bag:v143];
LABEL_9:
        v31 = v30;
        goto LABEL_10;
      }

      v38 = [v16 imageType];
      if (!v38)
      {
        v56 = [*(v11 + 3552) sharedPurchaseConfig];
        if (!v56)
        {
          v56 = [*(v11 + 3552) sharedConfig];
        }

        v57 = [v56 OSLogObject];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = objc_opt_class();
          v59 = v58;
          [(AMSPaymentSheetRequest *)self logKey];
          v61 = v60 = v14;
          *buf = 138543618;
          v148 = v58;
          v11 = 0x1E73B0000;
          v149 = 2114;
          v150 = v61;
          _os_log_impl(&dword_192869000, v57, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch rating image for unknown rating image type", buf, 0x16u);

          v14 = v60;
        }

        goto LABEL_36;
      }

      v39 = v38;
      if (v38 == 2)
      {
        v40 = [(AMSPaymentSheetRequest *)self isDesignVersionEqualOrGreaterThan:0x1F07798E0];
        v20 = [v16 value];
        v41 = [*(v11 + 3552) sharedPurchaseConfig];
        v42 = v41;
        if (v40)
        {
          if (!v41)
          {
            v42 = [*(v11 + 3552) sharedConfig];
          }

          v43 = [v42 OSLogObject];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = objc_opt_class();
            v134 = v44;
            [(AMSPaymentSheetRequest *)self logKey];
            v45 = v10;
            v46 = v20;
            v47 = v17;
            v48 = v16;
            v50 = v49 = v14;
            *buf = 138543874;
            v148 = v44;
            v11 = 0x1E73B0000;
            v149 = 2114;
            v150 = v50;
            v151 = 2114;
            v152 = v46;
            _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Generating text encapsulation inline image with rating value: %{public}@", buf, 0x20u);

            v14 = v49;
            v16 = v48;
            v17 = v47;
            v20 = v46;
            v10 = v45;
          }

          [v17 setObject:v20 forKeyedSubscript:@"AMSPaymentSheetContentItemTextEncapsulation"];
          v51 = 2;
          goto LABEL_37;
        }

        if (!v41)
        {
          v42 = [*(v11 + 3552) sharedConfig];
        }

        v75 = [v42 OSLogObject];
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v76 = objc_opt_class();
          v137 = v76;
          [(AMSPaymentSheetRequest *)self logKey];
          v77 = v10;
          v78 = v20;
          v79 = v17;
          v80 = v16;
          v82 = v81 = v14;
          *buf = 138543874;
          v148 = v76;
          v11 = 0x1E73B0000;
          v149 = 2114;
          v150 = v82;
          v151 = 2114;
          v152 = v78;
          _os_log_impl(&dword_192869000, v75, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Generating client-supplied inline image with rating value: %{public}@", buf, 0x20u);

          v14 = v81;
          v16 = v80;
          v17 = v79;
          v20 = v78;
          v10 = v77;
        }

        v30 = [(AMSPaymentSheetRequest *)self _createRatingImageWithStringValue:v20 assetScale:&v146];
        goto LABEL_9;
      }

      v64 = [(AMSPaymentSheetRequest *)self isDesignVersionEqualOrGreaterThan:0x1F07798E0];
      v65 = [(AMSPaymentSheetRequest *)self isDesignVersionEqualOrGreaterThan:0x1F07798E0];
      if (v39 == 8 && v64)
      {
        v66 = [v16 value];
        v67 = [AMSPaymentSheetInlineImage textEncapsulationForServerValue:v66];

        v11 = 0x1E73B0000uLL;
        v68 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v68)
        {
          v68 = +[AMSLogConfig sharedConfig];
        }

        v69 = [v68 OSLogObject];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = objc_opt_class();
          v136 = v17;
          v71 = v16;
          v72 = v14;
          v73 = v70;
          v74 = [(AMSPaymentSheetRequest *)self logKey];
          *buf = 138543874;
          v148 = v70;
          v11 = 0x1E73B0000;
          v149 = 2114;
          v150 = v74;
          v151 = 2114;
          v152 = v67;
          _os_log_impl(&dword_192869000, v69, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Generating text encapsulation inline image with rating value: %{public}@", buf, 0x20u);

          v14 = v72;
          v16 = v71;
          v17 = v136;
        }

        [v17 setObject:v67 forKeyedSubscript:@"AMSPaymentSheetContentItemTextEncapsulation"];
        v51 = 1;
        goto LABEL_37;
      }

      v83 = !v65;
      if ((v39 - 3) > 1)
      {
        v83 = 1;
      }

      if ((v83 & 1) == 0)
      {
        v84 = [v16 value];
        v85 = [*(v11 + 3552) sharedPurchaseConfig];
        if (!v85)
        {
          v85 = [*(v11 + 3552) sharedConfig];
        }

        v86 = [v85 OSLogObject];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = objc_opt_class();
          v138 = v17;
          v88 = v16;
          v89 = v14;
          v90 = v87;
          v91 = [(AMSPaymentSheetRequest *)self logKey];
          *buf = 138543874;
          v148 = v87;
          v11 = 0x1E73B0000;
          v149 = 2114;
          v150 = v91;
          v151 = 2114;
          v152 = v84;
          _os_log_impl(&dword_192869000, v86, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Will render inline image remotely with rating value: %{public}@", buf, 0x20u);

          self = v130;
          v14 = v89;
          v16 = v88;
          v17 = v138;
        }

        if (v39 == 4)
        {
          [v17 setObject:v84 forKeyedSubscript:@"AMSPaymentSheetContentItemMPAARating"];
        }

        else
        {
          v93 = [v16 region];

          if (v93)
          {
            v94 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v95 = [v16 region];
            [v94 setObject:v95 forKey:@"AMSPaymentContentItemCountryKey"];

            [v94 setObject:v84 forKey:@"AMSPaymentContentItemRatingKey"];
            v96 = [v94 copy];
            [v17 setObject:v96 forKeyedSubscript:@"AMSPaymentSheetContentItemRegionalRating"];

            v11 = 0x1E73B0000;
          }
        }

        goto LABEL_36;
      }

      v20 = [v16 localAssetConfiguration];
      if (v39 == 9)
      {
        v92 = [v16 value];
        [v17 setObject:v92 forKeyedSubscript:@"AMSPaymentSheetContentItemInlineImage"];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v92 = v20;
          v97 = [*(v11 + 3552) sharedPurchaseConfig];
          if (!v97)
          {
            v97 = [*(v11 + 3552) sharedConfig];
          }

          log = [v97 OSLogObject];
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v98 = objc_opt_class();
            v123 = v98;
            [(AMSPaymentSheetRequest *)self logKey];
            v99 = v125 = v97;
            v100 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
            [v92 filename];
            v101 = v139 = v14;
            v102 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v92, "type")}];
            *buf = 138544386;
            v148 = v98;
            v11 = 0x1E73B0000;
            v149 = 2114;
            v150 = v99;
            v151 = 2114;
            v152 = v100;
            v153 = 2114;
            v154 = v101;
            v155 = 2114;
            v156 = v102;
            _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching client-supplied inline image with image type: %{public}@, name: %{public}@, asset type: %{public}@", buf, 0x34u);

            self = v130;
            v14 = v139;

            v97 = v125;
          }

          v31 = [(AMSPaymentSheetRequest *)self _createImageForAssetConfiguration:v92 outAssetScale:&v146];
          goto LABEL_85;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v92 = v20;
          v103 = [*(v11 + 3552) sharedPurchaseConfig];
          if (!v103)
          {
            v103 = [*(v11 + 3552) sharedConfig];
          }

          v104 = [v103 OSLogObject];
          if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
          {
            v105 = objc_opt_class();
            v124 = v105;
            v126 = [(AMSPaymentSheetRequest *)self logKey];
            [v92 name];
            v106 = v140 = v14;
            v107 = [v92 accessibilityText];
            logb = v104;
            v108 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v92, "scale")}];
            *buf = 138544386;
            v148 = v105;
            v11 = 0x1E73B0000;
            v149 = 2114;
            v150 = v126;
            v151 = 2114;
            v152 = v106;
            v153 = 2114;
            v154 = v107;
            v155 = 2114;
            v156 = v108;
            _os_log_impl(&dword_192869000, logb, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Using client-supplied inline symbol image with name: %{public}@, accessibility text: %{public}@, scale: %{public}@", buf, 0x34u);

            v104 = logb;
            self = v130;

            v14 = v140;
          }

          v109 = [v92 name];
          [v17 setObject:v109 forKeyedSubscript:@"AMSPaymentSheetContentItemSymbolImageName"];

          v110 = [v92 accessibilityText];
          [v17 setObject:v110 forKeyedSubscript:@"AMSPaymentSheetContentItemSymbolImageAccessibilityText"];

          v111 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v92, "scale")}];
          [v17 setObject:v111 forKeyedSubscript:@"AMSPaymentSheetContentItemSymbolImageScale"];
        }

        else
        {
          v92 = [*(v11 + 3552) sharedPurchaseConfig];
          if (!v92)
          {
            v92 = [*(v11 + 3552) sharedConfig];
          }

          v111 = [v92 OSLogObject];
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            v112 = objc_opt_class();
            v141 = v112;
            [(AMSPaymentSheetRequest *)self logKey];
            v113 = v10;
            v114 = v20;
            v115 = v17;
            v116 = v16;
            v118 = v117 = v14;
            v119 = objc_opt_class();
            v120 = NSStringFromClass(v119);
            *buf = 138543874;
            v148 = v112;
            v11 = 0x1E73B0000;
            v149 = 2114;
            v150 = v118;
            v151 = 2114;
            v152 = v120;
            _os_log_impl(&dword_192869000, v111, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch rating image for unknown local image asset type: %{public}@", buf, 0x20u);

            v14 = v117;
            v16 = v116;
            v17 = v115;
            v20 = v114;
            v10 = v113;

            self = v130;
          }
        }
      }

      v31 = 0;
LABEL_85:

LABEL_10:
      if (v31)
      {
        Mutable = CFDataCreateMutable(allocator, 0);
        v33 = CGImageDestinationCreateWithData(Mutable, [v131 identifier], 1uLL, 0);
        CGImageDestinationAddImage(v33, v31, 0);
        if (CGImageDestinationFinalize(v33))
        {
          v34 = v146;
          v35 = [v16 tint];
          LODWORD(v36) = v34;
          v37 = v145;
          v145 = [(AMSPaymentSheetRequest *)self _replaceImagePlaceholderTag:v14 withImageData:Mutable scale:v35 tint:v145 forAttributedString:v36];
        }

        else
        {
          v135 = v14;
          v37 = [*(v11 + 3552) sharedPurchaseConfig];
          if (!v37)
          {
            v37 = [*(v11 + 3552) sharedConfig];
          }

          v52 = [v37 OSLogObject];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v53 = objc_opt_class();
            loga = v53;
            [(AMSPaymentSheetRequest *)self logKey];
            v55 = v54 = v17;
            *buf = 138543618;
            v148 = v53;
            v11 = 0x1E73B0000;
            v149 = 2114;
            v150 = v55;
            _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to finalized inline rating image", buf, 0x16u);

            v17 = v54;
            self = v130;
          }

          v14 = v135;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        CGImageRelease(v31);
      }

LABEL_36:
      v51 = 0;
LABEL_37:
      if ([v17 count])
      {
        v62 = [v17 copy];
        v63 = [(AMSPaymentSheetRequest *)self _replaceImagePlaceholderTag:v14 withAttributes:v62 foregroundColor:v51 forAttributedString:v145];

        v145 = v63;
      }

      ++v10;
    }

    while (v144 != v10);
  }

  v121 = v145;

  return v145;
}

- (id)_attachLeadingItem:(id)a3 attributedString:(id)a4 designVersion:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([(AMSPaymentSheetRequest *)self isDesignVersionEqualOrGreaterThan:0x1F07798E0])
  {
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"​", 0x1F073D158];
    v11 = [v9 initWithString:v10];

    [v11 addAttributes:v7 range:{0, 1}];
    [v11 appendAttributedString:v8];
    v12 = [v11 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_amsContentItemsForFlexibleList:(id)a3 assetCache:(id)a4 designVersion:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__53;
  v28 = __Block_byref_object_dispose__53;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v10)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __96__AMSPaymentSheetRequest_PassKit___amsContentItemsForFlexibleList_assetCache_designVersion_bag___block_invoke;
    v19 = &unk_1E73BA730;
    v20 = self;
    v21 = v12;
    v22 = v13;
    v23 = &v24;
    [v10 enumerateObjectsUsingBlock:&v16];
  }

  if ([v25[5] count])
  {
    v14 = [v25[5] copy];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __96__AMSPaymentSheetRequest_PassKit___amsContentItemsForFlexibleList_assetCache_designVersion_bag___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) isDesignVersionEqualOrGreaterThan:0x1F07798E0];
  v5 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v4)
  {
    if (isKindOfClass)
    {
      v13 = v5;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v3 objectForKeyedSubscript:@"header"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v3 objectForKeyedSubscript:@"headerIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v15 && v13)
    {
      v18 = [*(a1 + 32) ams_createAMSContentItem:v15 label:v13 image:0 accessibilityIdentifier:0 padding:0];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
    }

    else
    {
      if (!v17 || !v13)
      {
        goto LABEL_29;
      }

      v19 = MEMORY[0x1E695DFF8];
      v20 = [v17 string];
      v18 = [v19 URLWithString:v20];

      v21 = [*(a1 + 32) _createImageRefWithURL:v18 designVersion:*(a1 + 40) adornmentStyle:0 bag:*(a1 + 48)];
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v22)
        {
          v22 = +[AMSLogConfig sharedConfig];
        }

        v23 = [v22 OSLogObject];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          log = v23;
          v24 = objc_opt_class();
          v39 = *(a1 + 32);
          v41 = v24;
          v40 = [v39 logKey];
          *buf = 138543618;
          v43 = v24;
          v23 = log;
          v44 = 2114;
          v45 = v40;
          _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load flexList icon image", buf, 0x16u);
        }
      }

      v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F071BA78];
      v26 = [*(a1 + 32) ams_createAMSContentItem:v25 label:v13 image:v21 accessibilityIdentifier:0 padding:0];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v26];
    }

LABEL_29:
    goto LABEL_47;
  }

  if ((isKindOfClass & 1) == 0)
  {
LABEL_46:

    goto LABEL_47;
  }

  v7 = v5;

  if (v7)
  {
    v8 = [*(a1 + 32) _attachInlineImagesToAttributedString:v7 designVersion:*(a1 + 40) bag:*(a1 + 48)];

    v5 = [AMSPaymentSheetRequest attributedStringByRemovingPlaceholderTagsFromAttributedString:v8];

    v9 = [v3 objectForKeyedSubscript:@"leadingItem"];
    if (v9)
    {
      v10 = [*(a1 + 32) _attachLeadingItem:v9 attributedString:v5 designVersion:*(a1 + 40)];

      v11 = [v9 objectForKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemAttribute"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v28 = [v9 objectForKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemValueAttribute"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v27 = 0;
      if ([v12 integerValue] == 2 && v29)
      {
        v30 = [MEMORY[0x1E695DFF8] URLWithString:v29];
        v27 = [*(a1 + 32) _createImageRefWithURL:v30 designVersion:*(a1 + 40) adornmentStyle:0 bag:*(a1 + 48)];
      }

      v5 = v10;
    }

    else
    {
      v27 = 0;
    }

    v31 = [v3 objectForKeyedSubscript:@"axID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = [v3 objectForKeyedSubscript:@"padding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v5];
    v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F071BA78];
    v37 = [*(a1 + 32) ams_createAMSContentItem:v36 label:v35 image:v27 accessibilityIdentifier:v32 padding:v34];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v37];

    goto LABEL_46;
  }

LABEL_47:
}

- (id)ams_createAMSContentItem:(id)a3 label:(id)a4 image:(CGImage *)a5 accessibilityIdentifier:(id)a6 padding:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(AMSPaymentContentItem);
  v16 = v15;
  if (a5)
  {
    [(AMSPaymentContentItem *)v15 setImage:a5];
    CGImageRelease(a5);
  }

  if (v11)
  {
    [(AMSPaymentContentItem *)v16 setTitle:v11];
  }

  if (v12)
  {
    [(AMSPaymentContentItem *)v16 setLabel:v12];
  }

  if (v13)
  {
    [(AMSPaymentContentItem *)v16 setAccessibilityIdentifier:v13];
  }

  if (v14)
  {
    [(AMSPaymentContentItem *)v16 setPadding:v14];
  }

  return v16;
}

- (id)_contentItemsForFlexibleList:(id)a3 assetCache:(id)a4 designVersion:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__53;
  v28 = __Block_byref_object_dispose__53;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v10)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __93__AMSPaymentSheetRequest_PassKit___contentItemsForFlexibleList_assetCache_designVersion_bag___block_invoke;
    v19 = &unk_1E73BA730;
    v20 = self;
    v21 = v12;
    v22 = v13;
    v23 = &v24;
    [v10 enumerateObjectsUsingBlock:&v16];
  }

  if ([v25[5] count])
  {
    v14 = [v25[5] copy];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __93__AMSPaymentSheetRequest_PassKit___contentItemsForFlexibleList_assetCache_designVersion_bag___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) isDesignVersionEqualOrGreaterThan:0x1F07798E0];
  v5 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v4)
  {
    if (isKindOfClass)
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v3 objectForKeyedSubscript:@"header"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v3 objectForKeyedSubscript:@"headerIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v17 && v15)
    {
      v20 = objc_alloc_init(getPKPaymentContentItemClass());
      [v20 setTitle:v17];
      [v20 setLabel:v15];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v20];
    }

    else
    {
      if (!v19 || !v15)
      {
        goto LABEL_42;
      }

      v20 = objc_alloc_init(getPKPaymentContentItemClass());
      v21 = MEMORY[0x1E695DFF8];
      v22 = [v19 string];
      v23 = [v21 URLWithString:v22];

      v24 = [*(a1 + 32) _createImageRefWithURL:v23 designVersion:*(a1 + 40) adornmentStyle:0 bag:*(a1 + 48)];
      if (v24)
      {
        v25 = v24;
        [v20 setImage:v24];
        CGImageRelease(v25);
      }

      else
      {
        v33 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v33)
        {
          v33 = +[AMSLogConfig sharedConfig];
        }

        v34 = [v33 OSLogObject];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          log = v34;
          v35 = objc_opt_class();
          v38 = *(a1 + 32);
          v40 = v35;
          v39 = [v38 logKey];
          *buf = 138543618;
          v42 = v35;
          v34 = log;
          v43 = 2114;
          v44 = v39;
          _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load flexList icon image", buf, 0x16u);
        }
      }

      v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F071BA78];
      [v20 setTitle:v36];

      [v20 setLabel:v15];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v20];
    }

LABEL_42:
    goto LABEL_43;
  }

  if (isKindOfClass)
  {
    v7 = v5;

    if (v7)
    {
      v8 = objc_alloc_init(getPKPaymentContentItemClass());
      v9 = [*(a1 + 32) _attachInlineImagesToAttributedString:v7 designVersion:*(a1 + 40) bag:*(a1 + 48)];

      v10 = [AMSPaymentSheetRequest attributedStringByRemovingPlaceholderTagsFromAttributedString:v9];

      v11 = [v3 objectForKeyedSubscript:@"leadingItem"];
      if (v11)
      {
        v12 = [*(a1 + 32) _attachLeadingItem:v11 attributedString:v10 designVersion:*(a1 + 40)];

        v13 = [v11 objectForKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemAttribute"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v26 = [v11 objectForKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemValueAttribute"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        if ([v14 integerValue] == 2 && v27)
        {
          v28 = [MEMORY[0x1E695DFF8] URLWithString:v27];
          v29 = [*(a1 + 32) _createImageRefWithURL:v28 designVersion:*(a1 + 40) adornmentStyle:0 bag:*(a1 + 48)];
          if (v29)
          {
            v30 = v29;
            [v8 setImage:v29];
            CGImageRelease(v30);
          }
        }

        v10 = v12;
      }

      v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v10];
      [v8 setLabel:v31];

      v32 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F071BA78];
      [v8 setTitle:v32];

      [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
    }
  }

  else
  {
  }

LABEL_43:
}

- (CGRect)_rectWithAspectRatio:(CGSize)a3 insideRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.height;
  v9 = a3.width;
  v18 = a4.size.width / a3.width;
  v10 = a4.size.height / a3.height;
  MidX = CGRectGetMidX(a4);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidY = CGRectGetMidY(v19);
  v13 = fmin(v18, v10);
  v14 = v9 * v13;
  v15 = v8 * v13;
  v16 = MidY + v8 * v13 * -0.5;
  v17 = MidX + v14 * -0.5;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (id)_replaceImagePlaceholderTag:(id)a3 withAttributes:(id)a4 foregroundColor:(int64_t)a5 forAttributedString:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [a6 mutableCopy];
  v12 = [v10 mutableCopy];

  v13 = @"AMSPaymentContentItemLightColorAttribute";
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withAttributes_foregroundColor_forAttributedString___block_invoke;
  aBlock[3] = &unk_1E73BA7A8;
  v21 = v9;
  v22 = v11;
  v24 = v12;
  v25 = a5;
  v23 = v13;
  v14 = v12;
  v15 = v11;
  v16 = v9;
  v17 = _Block_copy(aBlock);
  v17[2](v17, @"%%image_");
  v17[2](v17, @"%%IMAGE_");
  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v15];

  return v18;
}

void __114__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withAttributes_foregroundColor_forAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v15, *(a1 + 32), @"%%"];
  v4 = [*(a1 + 40) mutableString];
  v5 = [v4 rangeOfString:v3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    do
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v10 = *(a1 + 64);
      if (v10 == 2)
      {
        v26 = 1;
        v12 = MEMORY[0x1E695E118];
      }

      else if (v10 || (v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __114__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withAttributes_foregroundColor_forAttributedString___block_invoke_2, v20[3] = &unk_1E73BA758, v11 = *(a1 + 40), v21 = *(a1 + 48), v22 = &v23, [v11 enumerateAttributesInRange:v8 options:v9 usingBlock:{0, v20}], v21, v12 = MEMORY[0x1E695E118], (v24[3] & 1) == 0))
      {
        v12 = MEMORY[0x1E695E110];
      }

      [*(a1 + 56) setObject:v12 forKeyedSubscript:*(a1 + 48)];
      [*(a1 + 40) replaceCharactersInRange:v8 withString:{v9, @" "}];
      v13 = *(a1 + 56);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __114__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withAttributes_foregroundColor_forAttributedString___block_invoke_3;
      v16[3] = &unk_1E73BA780;
      v17 = *(a1 + 40);
      v18 = v8;
      v19 = v9;
      [v13 enumerateKeysAndObjectsUsingBlock:v16];
      v7 = [*(a1 + 40) mutableString];

      v8 = [v7 rangeOfString:v3];
      v9 = v14;

      _Block_object_dispose(&v23, 8);
      v4 = v7;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

void __114__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withAttributes_foregroundColor_forAttributedString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (id)_replaceImagePlaceholderTag:(id)a3 withImageData:(id)a4 scale:(float)a5 tint:(BOOL)a6 forAttributedString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [a7 mutableCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withImageData_scale_tint_forAttributedString___block_invoke;
  aBlock[3] = &unk_1E73BA7D0;
  v22 = v12;
  v23 = v14;
  v26 = a5;
  v24 = v13;
  v25 = self;
  v27 = a6;
  v15 = v13;
  v16 = v14;
  v17 = v12;
  v18 = _Block_copy(aBlock);
  v18[2](v18, @"%%image_");
  v18[2](v18, @"%%IMAGE_");
  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v16];

  return v19;
}

void __108__AMSPaymentSheetRequest_PassKit___replaceImagePlaceholderTag_withImageData_scale_tint_forAttributedString___block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", a2, *(a1 + 32), @"%%"];
  v4 = [*(a1 + 40) mutableString];
  v5 = [v4 rangeOfString:v3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
  }

  else
  {
    v8 = v5;
    if (@"AMSPaymentContentItemImageAndScaleAttachment")
    {
      v9 = @"AMSPaymentContentItemImageKey" == 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = !v9 && @"AMSPaymentContentItemScaleKey" != 0;
    v12 = 0x1E73B0000uLL;
    v34 = v11;
    v31 = v3;
    do
    {
      [*(a1 + 40) replaceCharactersInRange:v8 withString:{v6, @" "}];
      if (*(a1 + 48))
      {
        if (v11 && *(a1 + 64) > 0.0)
        {
          v13 = [*(v12 + 3552) sharedPurchaseConfig];
          if (!v13)
          {
            v13 = [*(v12 + 3552) sharedConfig];
          }

          v14 = [v13 OSLogObject];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = objc_opt_class();
            v16 = *(a1 + 56);
            v33 = v15;
            v32 = [v16 logKey];
            v17 = *(a1 + 32);
            LODWORD(v18) = *(a1 + 64);
            v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
            v20 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 68)];
            *buf = 138544386;
            v36 = v15;
            v11 = v34;
            v37 = 2114;
            v38 = v32;
            v39 = 2114;
            v40 = v17;
            v3 = v31;
            v41 = 2114;
            v42 = v19;
            v43 = 2114;
            v44 = v20;
            _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Rendering Retina image for tag: %{public}@, scale:%{public}@ tint:%{public}@", buf, 0x34u);

            v12 = 0x1E73B0000;
          }

          v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v21 setObject:*(a1 + 48) forKey:@"AMSPaymentContentItemImageKey"];
          LODWORD(v22) = *(a1 + 64);
          v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
          [v21 setObject:v23 forKey:@"AMSPaymentContentItemScaleKey"];

          [*(a1 + 40) addAttribute:@"AMSPaymentContentItemImageAndScaleAttachment" value:v21 range:{v8, 1}];
        }

        else
        {
          v24 = [*(v12 + 3552) sharedPurchaseConfig];
          if (!v24)
          {
            v24 = [*(v12 + 3552) sharedConfig];
          }

          v25 = [v24 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = *(a1 + 56);
            v28 = v26;
            v29 = [v27 logKey];
            v30 = *(a1 + 32);
            *buf = 138543874;
            v36 = v26;
            v11 = v34;
            v37 = 2114;
            v38 = v29;
            v39 = 2114;
            v40 = v30;
            _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Rendering non-Retina image for tag: %{public}@", buf, 0x20u);

            v12 = 0x1E73B0000;
          }

          [*(a1 + 40) addAttribute:@"AMSPaymentContentItemImageAttachment" value:*(a1 + 48) range:{v8, 1}];
        }
      }

      v7 = [*(a1 + 40) mutableString];

      v8 = [v7 rangeOfString:v3];
      v4 = v7;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (id)_summaryItemsForAttributedList:(id)a3 assetCache:(id)a4 bag:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = AMSSetLogKeyIfNeeded();
  if ([v6 count])
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke;
    v31[3] = &unk_1E73B7E40;
    v9 = v7;
    v32 = v9;
    [v6 enumerateObjectsUsingBlock:v31];
    v10 = [(AMSPaymentSheetRequest *)self paymentSummary];

    if (v10)
    {
      v11 = [(AMSPaymentSheetRequest *)self paymentSummary];
    }

    else
    {
      v16 = [(AMSPaymentSheetRequest *)self storeName];

      if (v16)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = AMSLocalizedString(@"CONFIRMATION_TITLE_PAY", 0);
        v19 = [(AMSPaymentSheetRequest *)self storeName];
        v12 = [v17 stringWithFormat:@"%@ %@", v18, v19];

        goto LABEL_12;
      }

      v11 = AMSLocalizedString(@"CONFIRMATION_TITLE_PAY", 0);
    }

    v12 = v11;
LABEL_12:
    if ([(AMSPaymentSheetRequest *)self shouldUppercaseText])
    {
      v20 = [v12 localizedUppercaseString];

      v12 = v20;
    }

    v21 = [(AMSPaymentSheetRequest *)self price];
    v22 = v21;
    v23 = &unk_1F0779898;
    if (v21)
    {
      v23 = v21;
    }

    v24 = v23;

    PKPaymentSummaryItemClass = getPKPaymentSummaryItemClass();
    v26 = MEMORY[0x1E696AB90];
    [v24 decimalValue];

    v27 = [v26 decimalNumberWithDecimal:buf];
    v28 = [PKPaymentSummaryItemClass summaryItemWithLabel:v12 amount:v27];

    [v9 addObject:v28];
    v13 = v32;
    goto LABEL_17;
  }

  v13 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v8;
    v15 = v34;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping attributed list", buf, 0x16u);
  }

LABEL_17:
  if ([v7 count])
  {
    v29 = [v7 copy];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke_2;
  v5[3] = &unk_1E73B7E40;
  v6 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 objectForKeyedSubscript:@"header"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7 && v5)
    {
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v18[3] = 0;
      v8 = [v5 length];
      v9 = [v5 string];
      v10 = [v9 componentsSeparatedByString:@"\n"];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke_3;
      v11[3] = &unk_1E73BA820;
      v7 = v7;
      v12 = v7;
      v15 = v18;
      v13 = v5;
      v16 = 0;
      v17 = v8;
      v14 = *(a1 + 32);
      [v10 enumerateObjectsUsingBlock:v11];

      _Block_object_dispose(v18, 8);
    }
  }

  else
  {

    v7 = 0;
  }
}

void __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  PKPaymentSummaryItemClass = getPKPaymentSummaryItemClass();
  v7 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.0"];
  v8 = [PKPaymentSummaryItemClass summaryItemWithLabel:v5 amount:v7 type:0];

  [v8 setLocalizedAmount:&stru_1F071BA78];
  if (a3)
  {
    [v8 setLocalizedTitle:&stru_1F071BA78];
  }

  else
  {
    v9 = [*(a1 + 32) string];
    [v8 setLocalizedTitle:v9];
  }

  [v8 setUseDarkColor:1];
  v10 = *(*(*(a1 + 56) + 8) + 24);
  v11 = [v5 length];
  [v8 setUseLargeFont:0];
  v12 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke_4;
  v16[3] = &unk_1E73BA7F8;
  v18 = v10;
  v19 = v11;
  v17 = v8;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = v8;
  [v12 enumerateAttribute:@"useLargeSize" inRange:v13 options:v14 usingBlock:{0, v16}];
  [*(a1 + 48) addObject:v15];
  *(*(*(a1 + 56) + 8) + 24) += [v5 length] + 1;
}

void __81__AMSPaymentSheetRequest_PassKit___summaryItemsForAttributedList_assetCache_bag___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (a3 == *(a1 + 40) && a4 == *(a1 + 48))
  {
    v10 = v9;
    [*(a1 + 32) setUseLargeFont:1];
    v9 = v10;
    *a5 = 1;
  }
}

- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)a3 iconWidth:(double)a4 iconHeight:(double)a5
{
  Mutable = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Mutable = CGPathCreateMutable();
      v13 = a4 * 0.236842105 + 0.0 + 0.5;
      CGPathMoveToPoint(Mutable, 0, 0.5, v13);
      v14 = a5 - a4 * 0.236842105 + -0.5;
      CGPathAddLineToPoint(Mutable, 0, 0.5, v14);
      v15 = a5 + -0.5;
      CGPathAddQuadCurveToPoint(Mutable, 0, 0.5, v15, v13, v15);
      v16 = a4 - a4 * 0.236842105 + -0.5;
      CGPathAddLineToPoint(Mutable, 0, v16, v15);
      v17 = a4 + -0.5;
      CGPathAddQuadCurveToPoint(Mutable, 0, v17, v15, v17, v14);
      CGPathAddLineToPoint(Mutable, 0, v17, v13);
      CGPathAddQuadCurveToPoint(Mutable, 0, v17, 0.5, v16, 0.5);
      CGPathAddLineToPoint(Mutable, 0, v13, 0.5);
      CGPathAddQuadCurveToPoint(Mutable, 0, 0.5, 0.5, 0.5, v13);
    }

    else if (a3 == 6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 3)
      {
        return Mutable;
      }

LABEL_7:
      v18.size.width = a4 + -1.0;
      v18.size.height = a5 + -1.0;
      v18.origin.x = 0.5;
      v8 = (a5 + -1.0) * 0.5;
      v18.origin.y = 0.5;
      v9 = CGPathCreateWithRoundedRect(v18, (a4 + -1.0) * 0.5, v8, 0);
      MutableCopy = CGPathCreateMutableCopy(v9);
      CGPathRelease(v9);
      return MutableCopy;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.5, 0.5);
    CGPathAddLineToPoint(Mutable, 0, 0.5, a5 + -0.5);
    v12 = a4 + -0.5;
    CGPathAddLineToPoint(Mutable, 0, v12, a5 + -0.5);
    CGPathAddLineToPoint(Mutable, 0, v12, 0.5);
    CGPathAddLineToPoint(Mutable, 0, 0.5, 0.5);
  }

  return Mutable;
}

- (CGImage)_createDefaultImageWithImageRef:(CGImage *)a3 size:(CGSize)a4 borderPath:(CGPath *)a5
{
  height = a4.height;
  width = a4.width;
  v15 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 2u);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = width;
  v16.size.height = height;
  CGContextDrawImage(v10, v16, a3);
  v14[0] = xmmword_193016A10;
  v14[1] = unk_193016A20;
  v11 = CGColorCreate(DeviceRGB, v14);
  CGContextSetStrokeColorWithColor(v10, v11);
  CGContextSetLineWidth(v10, 1.0);
  CGContextAddPath(v10, a5);
  CGContextDrawPath(v10, kCGPathStroke);
  Image = CGBitmapContextCreateImage(v10);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v11);
  CGContextRelease(v10);
  return Image;
}

- (CGImage)_createImageForAssetConfiguration:(id)a3 outAssetScale:(float *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0;
  v7 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  if (!v7)
  {
    v8 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [(AMSPaymentSheetRequest *)self logKey];
      *buf = 138543618;
      v29 = v10;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Image Source: Failed to bundle", buf, 0x16u);
    }
  }

  v13 = [v6 filename];
  v14 = [v6 fileExtension];
  v15 = [v7 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    [v6 size];
    v18 = -[AMSPaymentSheetRequest _createImageRefForAssetURL:size:assetType:outAssetScale:](self, "_createImageRefForAssetURL:size:assetType:outAssetScale:", v15, [v6 type], &v27, v16, v17);
    if (a4)
    {
LABEL_9:
      *a4 = v27;
    }
  }

  else
  {
    v20 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v26 = v22;
      v23 = [(AMSPaymentSheetRequest *)self logKey];
      v24 = [v6 filename];
      v25 = [v6 fileExtension];
      *buf = 138544130;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Image Source: Failed to find path for resource: %{public}@.%{public}@", buf, 0x2Au);
    }

    v18 = 0;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  return v18;
}

- (CGImage)_createImageRefForAssetURL:(id)a3 size:(CGSize)a4 assetType:(int64_t)a5 outAssetScale:(float *)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  if (!a5)
  {
    v13 = [(AMSPaymentSheetRequest *)self _createImageRefForImageURL:v12 outAssetScale:a6];
    goto LABEL_5;
  }

  if (a5 == 1)
  {
    v13 = [(AMSPaymentSheetRequest *)self _createImageRefForPDFURL:v12 size:a6 outAssetScale:width, height];
LABEL_5:
    v6 = v13;
  }

  return v6;
}

- (CGImage)_createImageRefForPDFURL:(id)a3 size:(CGSize)a4 outAssetScale:(float *)a5
{
  height = a4.height;
  width = a4.width;
  v136 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = CGPDFDocumentCreateWithURL(v9);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__AMSPaymentSheetRequest_PassKit___createImageRefForPDFURL_size_outAssetScale___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v10;
  v11 = _Block_copy(aBlock);
  if (!v10)
  {
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v51 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v51)
      {
        v51 = +[AMSLogConfig sharedConfig];
      }

      v52 = [v51 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = AMSLogKey();
        v54 = MEMORY[0x1E696AEC0];
        if (v53)
        {
          v55 = objc_opt_class();
          v56 = AMSLogKey();
          v57 = [v54 stringWithFormat:@"%@: [%@] ", v55, v56];
        }

        else
        {
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          v56 = v57;
        }

        v100 = AMSLogableURL(v9);
        LODWORD(v135.a) = 138543618;
        *(&v135.a + 4) = v57;
        WORD2(v135.b) = 2114;
        *(&v135.b + 6) = v100;
        _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to create PDF document for resource at URL: %{public}@", &v135, 0x16u);
        if (v53)
        {
        }
      }

      goto LABEL_70;
    }

    v63 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v63)
    {
      v63 = +[AMSLogConfig sharedConfig];
    }

    v64 = [v63 OSLogObject];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      v65 = AMSLogKey();
      v66 = MEMORY[0x1E696AEC0];
      if (v65)
      {
        v67 = objc_opt_class();
        v68 = AMSLogKey();
        v69 = [v66 stringWithFormat:@"%@: [%@] ", v67, v68];
      }

      else
      {
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        v68 = v69;
      }

      v103 = AMSLogableURL(v9);
      LODWORD(v135.a) = 138543618;
      *(&v135.a + 4) = v69;
      WORD2(v135.b) = 2114;
      *(&v135.b + 6) = v103;
      _os_log_impl(&dword_192869000, v64, OS_LOG_TYPE_FAULT, "%{public}@Failed to create PDF document for resource at URL: %{public}@", &v135, 0x16u);
      if (v65)
      {
      }
    }

LABEL_90:

    goto LABEL_91;
  }

  Page = CGPDFDocumentGetPage(v10, 1uLL);
  v13 = Page;
  if (!Page)
  {
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v51 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v51)
      {
        v51 = +[AMSLogConfig sharedConfig];
      }

      v52 = [v51 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v58 = AMSLogKey();
        v59 = MEMORY[0x1E696AEC0];
        if (v58)
        {
          v60 = objc_opt_class();
          v61 = AMSLogKey();
          v62 = [v59 stringWithFormat:@"%@: [%@] ", v60, v61];
        }

        else
        {
          v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          v61 = v62;
        }

        v108 = AMSLogableURL(v9);
        LODWORD(v135.a) = 138543618;
        *(&v135.a + 4) = v62;
        WORD2(v135.b) = 2114;
        *(&v135.b + 6) = v108;
        _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to create PDF page for page 1 of PDF at URL: %{public}@", &v135, 0x16u);
        if (v58)
        {
        }
      }

LABEL_70:

      v101 = [MEMORY[0x1E696AD88] defaultCenter];
      v102 = +[AMSLogConfig sharedPurchaseConfig];
      [v101 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v102 userInfo:0];

LABEL_91:
      Image = 0;
      v27 = 0.0;
      goto LABEL_123;
    }

    v63 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v63)
    {
      v63 = +[AMSLogConfig sharedConfig];
    }

    v64 = [v63 OSLogObject];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      v77 = AMSLogKey();
      v78 = MEMORY[0x1E696AEC0];
      if (v77)
      {
        v79 = objc_opt_class();
        v80 = AMSLogKey();
        v81 = [v78 stringWithFormat:@"%@: [%@] ", v79, v80];
      }

      else
      {
        v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        v80 = v81;
      }

      v109 = AMSLogableURL(v9);
      LODWORD(v135.a) = 138543618;
      *(&v135.a + 4) = v81;
      WORD2(v135.b) = 2114;
      *(&v135.b + 6) = v109;
      _os_log_impl(&dword_192869000, v64, OS_LOG_TYPE_FAULT, "%{public}@Failed to create PDF page for page 1 of PDF at URL: %{public}@", &v135, 0x16u);
      if (v77)
      {
      }
    }

    goto LABEL_90;
  }

  BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
  y = BoxRect.origin.y;
  x = BoxRect.origin.x;
  v14 = BoxRect.size.width;
  v15 = BoxRect.size.height;
  RotationAngle = CGPDFPageGetRotationAngle(v13);
  memset(&v135, 0, sizeof(v135));
  CGAffineTransformMakeRotation(&v135, -RotationAngle * 0.0174532925);
  transform = v135;
  v138.origin.y = y;
  v138.origin.x = x;
  v138.size.width = v14;
  v138.size.height = v15;
  v139 = CGRectApplyAffineTransform(v138, &transform);
  v120 = v139.origin.y;
  v121 = v139.origin.x;
  v17 = v139.size.width;
  rect = v139.size.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v140.origin.x = x;
    v140.origin.y = y;
    v140.size.width = v14;
    v140.size.height = v15;
    v19 = CGRectGetWidth(v140);
    v141.origin.x = x;
    v141.origin.y = y;
    v141.size.width = v14;
    v141.size.height = v15;
    width = v19 * 0.5;
    height = CGRectGetHeight(v141) * 0.5;
  }

  [(AMSPaymentSheetRequest *)self _rectWithAspectRatio:v17 insideRect:rect, 0.0, 0.0, width, height];
  v21 = v20;
  v23 = v22;
  v118 = v15;
  v119 = v14;
  v24 = +[AMSDevice screenScale];
  v25 = v24;
  if (!v24)
  {
    v24 = &unk_1F07798B0;
  }

  [v24 floatValue];
  v27 = v26;

  v28 = *MEMORY[0x1E695EFF8];
  v29 = *(MEMORY[0x1E695EFF8] + 8);
  CGAffineTransformMakeScale(&transform, v27, v27);
  v142.origin.x = v28;
  v142.origin.y = v29;
  v142.size.width = v21;
  v142.size.height = v23;
  v143 = CGRectApplyAffineTransform(v142, &transform);
  v144 = CGRectIntegral(v143);
  v30 = v144.origin.x;
  v31 = v144.origin.y;
  v32 = v144.size.width;
  v33 = v144.size.height;
  v117 = CGRectGetHeight(v144);
  v145.origin.y = v120;
  v145.origin.x = v121;
  v145.size.width = v17;
  v145.size.height = rect;
  recta = CGRectGetHeight(v145);
  v146.origin.x = v30;
  v146.origin.y = v31;
  v146.size.width = v32;
  v146.size.height = v33;
  v34 = CGRectGetWidth(v146);
  v147.origin.x = v30;
  v147.origin.y = v31;
  v147.size.width = v32;
  v147.size.height = v33;
  v35 = CGRectGetHeight(v147);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = __79__AMSPaymentSheetRequest_PassKit___createImageRefForPDFURL_size_outAssetScale___block_invoke_116;
  v132[3] = &__block_descriptor_40_e5_v8__0l;
  v132[4] = DeviceRGB;
  v37 = _Block_copy(v132);
  if (!DeviceRGB)
  {
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v70 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v70)
      {
        v70 = +[AMSLogConfig sharedConfig];
      }

      v71 = [v70 OSLogObject];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = AMSLogKey();
        v73 = MEMORY[0x1E696AEC0];
        if (v72)
        {
          v74 = objc_opt_class();
          v75 = AMSLogKey();
          v76 = [v73 stringWithFormat:@"%@: [%@] ", v74, v75];
        }

        else
        {
          v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          v75 = v76;
        }

        v110 = AMSLogableURL(v9);
        LODWORD(transform.a) = 138543618;
        *(&transform.a + 4) = v76;
        WORD2(transform.b) = 2114;
        *(&transform.b + 6) = v110;
        _os_log_impl(&dword_192869000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to create color space for PDF at URL: %{public}@", &transform, 0x16u);
        if (v72)
        {
        }
      }

      v39 = [MEMORY[0x1E696AD88] defaultCenter];
      v88 = +[AMSLogConfig sharedPurchaseConfig];
      [v39 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v88 userInfo:0];
    }

    else
    {
      v39 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v39)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v88 = [v39 OSLogObject];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
      {
        v89 = AMSLogKey();
        v90 = MEMORY[0x1E696AEC0];
        if (v89)
        {
          v91 = objc_opt_class();
          v92 = AMSLogKey();
          v93 = [v90 stringWithFormat:@"%@: [%@] ", v91, v92];
        }

        else
        {
          v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          v92 = v93;
        }

        v111 = AMSLogableURL(v9);
        LODWORD(transform.a) = 138543618;
        *(&transform.a + 4) = v93;
        WORD2(transform.b) = 2114;
        *(&transform.b + 6) = v111;
        _os_log_impl(&dword_192869000, v88, OS_LOG_TYPE_FAULT, "%{public}@Failed to create color space for PDF at URL: %{public}@", &transform, 0x16u);
        if (v89)
        {
        }
      }
    }

    Image = 0;
    v27 = 0.0;
    goto LABEL_122;
  }

  v38 = CGBitmapContextCreate(0, v34, v35, 8uLL, 4 * v34, DeviceRGB, 2u);
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __79__AMSPaymentSheetRequest_PassKit___createImageRefForPDFURL_size_outAssetScale___block_invoke_2;
  v131[3] = &__block_descriptor_40_e5_v8__0l;
  v131[4] = v38;
  v39 = _Block_copy(v131);
  if (v38)
  {
    v148.origin.x = v30;
    v148.origin.y = v31;
    v148.size.width = v32;
    v148.size.height = v33;
    CGPDFPageGetDrawingTransform(&transform, v13, kCGPDFCropBox, v148, 0, 1);
    v135 = transform;
    if (v117 / recta > 1.0)
    {
      v149.origin.x = x;
      v149.origin.y = y;
      v149.size.width = v119;
      v149.size.height = v118;
      MidX = CGRectGetMidX(v149);
      v150.origin.x = x;
      v150.origin.y = y;
      v150.size.width = v119;
      v150.size.height = v118;
      MidY = CGRectGetMidY(v150);
      v130 = v135;
      CGAffineTransformTranslate(&transform, &v130, MidX, MidY);
      v135 = transform;
      v130 = transform;
      CGAffineTransformScale(&transform, &v130, v117 / recta, v117 / recta);
      v135 = transform;
      v151.origin.x = x;
      v151.origin.y = y;
      v151.size.width = v119;
      v151.size.height = v118;
      v42 = CGRectGetMidX(v151);
      v152.origin.x = x;
      v152.origin.y = y;
      v152.size.width = v119;
      v152.size.height = v118;
      v43 = CGRectGetMidY(v152);
      v130 = v135;
      CGAffineTransformTranslate(&transform, &v130, -v42, -v43);
      v135 = transform;
    }

    transform = v135;
    CGContextConcatCTM(v38, &transform);
    v153.origin.y = y;
    v153.origin.x = x;
    v153.size.height = v118;
    v153.size.width = v119;
    CGContextAddRect(v38, v153);
    CGContextClip(v38);
    CGContextDrawPDFPage(v38, v13);
    Image = CGBitmapContextCreateImage(v38);
    if (Image)
    {
      goto LABEL_121;
    }

    if (+[AMSUnitTests isRunningUnitTests])
    {
      v45 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v45)
      {
        v45 = +[AMSLogConfig sharedConfig];
      }

      v46 = [v45 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = AMSLogKey();
        v48 = MEMORY[0x1E696AEC0];
        if (v47)
        {
          v49 = objc_opt_class();
          v126 = AMSLogKey();
          v50 = [v48 stringWithFormat:@"%@: [%@] ", v49, v126];
        }

        else
        {
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          v126 = v50;
        }

        v114 = AMSLogableURL(v9);
        LODWORD(transform.a) = 138543618;
        *(&transform.a + 4) = v50;
        WORD2(transform.b) = 2114;
        *(&transform.b + 6) = v114;
        _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to create image for PDF at URL: %{public}@", &transform, 0x16u);
        if (v47)
        {
        }
      }

      v94 = [MEMORY[0x1E696AD88] defaultCenter];
      v95 = +[AMSLogConfig sharedPurchaseConfig];
      [v94 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v95 userInfo:0];
    }

    else
    {
      v94 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v94)
      {
        v94 = +[AMSLogConfig sharedConfig];
      }

      v95 = [v94 OSLogObject];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
      {
        v129 = AMSLogKey();
        v104 = MEMORY[0x1E696AEC0];
        if (v129)
        {
          v105 = objc_opt_class();
          v106 = AMSLogKey();
          v107 = [v104 stringWithFormat:@"%@: [%@] ", v105, v106];
        }

        else
        {
          v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          v106 = v107;
        }

        v115 = AMSLogableURL(v9);
        LODWORD(transform.a) = 138543618;
        *(&transform.a + 4) = v107;
        WORD2(transform.b) = 2114;
        *(&transform.b + 6) = v115;
        _os_log_impl(&dword_192869000, v95, OS_LOG_TYPE_FAULT, "%{public}@Failed to create image for PDF at URL: %{public}@", &transform, 0x16u);
        if (v129)
        {
        }
      }
    }
  }

  else if (+[AMSUnitTests isRunningUnitTests])
  {
    v82 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v82)
    {
      v82 = +[AMSLogConfig sharedConfig];
    }

    v83 = [v82 OSLogObject];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v127 = AMSLogKey();
      v84 = MEMORY[0x1E696AEC0];
      if (v127)
      {
        v85 = objc_opt_class();
        v86 = AMSLogKey();
        v87 = [v84 stringWithFormat:@"%@: [%@] ", v85, v86];
      }

      else
      {
        v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        v86 = v87;
      }

      v112 = AMSLogableURL(v9);
      LODWORD(transform.a) = 138543618;
      *(&transform.a + 4) = v87;
      WORD2(transform.b) = 2114;
      *(&transform.b + 6) = v112;
      _os_log_impl(&dword_192869000, v83, OS_LOG_TYPE_ERROR, "%{public}@Failed to create bitmap image context for PDF at URL: %{public}@", &transform, 0x16u);
      if (v127)
      {
      }
    }

    v94 = [MEMORY[0x1E696AD88] defaultCenter];
    v95 = +[AMSLogConfig sharedPurchaseConfig];
    [v94 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v95 userInfo:0];
  }

  else
  {
    v94 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v94)
    {
      v94 = +[AMSLogConfig sharedConfig];
    }

    v95 = [v94 OSLogObject];
    if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
    {
      v128 = AMSLogKey();
      v96 = MEMORY[0x1E696AEC0];
      if (v128)
      {
        v97 = objc_opt_class();
        v98 = AMSLogKey();
        v99 = [v96 stringWithFormat:@"%@: [%@] ", v97, v98];
      }

      else
      {
        v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        v98 = v99;
      }

      v113 = AMSLogableURL(v9);
      LODWORD(transform.a) = 138543618;
      *(&transform.a + 4) = v99;
      WORD2(transform.b) = 2114;
      *(&transform.b + 6) = v113;
      _os_log_impl(&dword_192869000, v95, OS_LOG_TYPE_FAULT, "%{public}@Failed to create bitmap image context for PDF at URL: %{public}@", &transform, 0x16u);
      if (v128)
      {
      }
    }
  }

  Image = 0;
  v27 = 0.0;
LABEL_121:
  v39[2](v39);
LABEL_122:

  v37[2](v37);
LABEL_123:
  if (a5)
  {
    *a5 = v27;
  }

  v11[2](v11);

  return Image;
}

- (CGImage)_createImageRefForImageURL:(id)a3 outAssetScale:(float *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0;
  v7 = CGImageSourceCreateWithURL(v6, 0);
  if (v7)
  {
    v8 = v7;
    if (CGImageSourceGetCount(v7))
    {
      v9 = +[AMSDevice screenScale];
      [v9 floatValue];
      v11 = v10;

      LODWORD(v12) = v11;
      v13 = [(AMSPaymentSheetRequest *)self _createImageRefForImageSource:v8 screenScale:&v27 outAssetScale:v12];
    }

    else
    {
      v20 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = v22;
        v24 = [(AMSPaymentSheetRequest *)self logKey];
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:0];
        *buf = 138543874;
        v29 = v22;
        v30 = 2114;
        v31 = v24;
        v32 = 2114;
        v33 = v25;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Image Source: Failed image count: %{public}@", buf, 0x20u);
      }

      v13 = 0;
    }

    CFRelease(v8);
    if (a4)
    {
LABEL_16:
      *a4 = v27;
    }
  }

  else
  {
    v14 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [(AMSPaymentSheetRequest *)self logKey];
      v19 = AMSLogableURL(v6);
      *buf = 138543874;
      v29 = v16;
      v30 = 2114;
      v31 = v18;
      v32 = 2114;
      v33 = v19;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Image Source: Failed to create image source for resource at URL: %{public}@", buf, 0x20u);
    }

    v13 = 0;
    if (a4)
    {
      goto LABEL_16;
    }
  }

  return v13;
}

- (CGImage)_createImageMaskRefWithSize:(CGSize)a3 andPath:(CGPath *)a4
{
  height = a3.height;
  width = a3.width;
  v20 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v8 = CGBitmapContextCreate(0, width, height, 8uLL, 0, DeviceGray, 7u);
  v19 = xmmword_193016A00;
  v9 = CGColorCreate(DeviceGray, &v19);
  CGContextSetFillColorWithColor(v8, v9);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  CGContextFillRect(v8, v21);
  CGContextBeginPath(v8);
  CGContextAddPath(v8, a4);
  CGContextClip(v8);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = width;
  v22.size.height = height;
  CGContextClearRect(v8, v22);
  Image = CGBitmapContextCreateImage(v8);
  v11 = CGImageGetWidth(Image);
  v12 = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  v17 = CGImageMaskCreate(v11, v12, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 0);
  CGImageRelease(Image);
  CGColorRelease(v9);
  CGContextRelease(v8);
  CGColorSpaceRelease(DeviceGray);
  return v17;
}

- (CGImage)_createImageRefForImageSource:(CGImageSource *)a3 screenScale:(float)a4 outAssetScale:(float *)a5
{
  Count = CGImageSourceGetCount(a3);
  v9 = 2.0;
  v10 = 1.0;
  if (a4 == 2.0 && (Count & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v11 = 2.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = 1;
  v13 = 2;
  if (Count == 3)
  {
    v10 = 3.0;
  }

  else
  {
    v13 = 0;
  }

  if (Count != 2)
  {
    v12 = v13;
    v9 = v10;
  }

  if (a4 == 3.0)
  {
    v14 = v12;
  }

  else
  {
    v14 = (a4 == 2.0) & ((Count & 0xFFFFFFFFFFFFFFFELL) == 2);
  }

  if (a4 == 3.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = v11;
  }

  result = CGImageSourceCreateImageAtIndex(a3, v14, 0);
  if (a5)
  {
    *a5 = v15;
  }

  return result;
}

- (CGImage)_createImageRefWithURL:(id)a3 designVersion:(id)a4 adornmentStyle:(int64_t)a5 bag:(id)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v46 = a4;
  v10 = a6;
  v11 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [(AMSPaymentSheetRequest *)self logKey];
    v16 = AMSLogableURL(v9);
    *buf = 138543874;
    v50 = v13;
    v51 = 2114;
    v52 = v15;
    v53 = 2114;
    v54 = v16;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading image resource at: %{public}@", buf, 0x20u);
  }

  v17 = [[AMSURLRequestEncoder alloc] initWithBag:v10];
  [(AMSURLRequestEncoder *)v17 setDisableResponseDecoding:1];
  v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v18 timeIntervalSince1970];
  v20 = v19;

  v21 = [(AMSURLRequestEncoder *)v17 requestWithMethod:2 URL:v9 parameters:0];
  v48 = 0;
  v22 = [v21 resultWithError:&v48];
  v23 = v48;

  if (v23)
  {
    v24 = 0;
LABEL_8:
    v27 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = v29;
      v31 = [(AMSPaymentSheetRequest *)self logKey];
      *buf = 138543874;
      v50 = v29;
      v51 = 2114;
      v52 = v31;
      v53 = 2114;
      v54 = v23;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load image resource. Error: %{public}@", buf, 0x20u);
    }

    v32 = 0;
    v33 = v46;
    goto LABEL_13;
  }

  v25 = +[AMSURLSession minimalSession];
  v26 = [v25 dataTaskPromiseWithRequest:v22];
  v47 = 0;
  v24 = [v26 resultWithError:&v47];
  v23 = v47;

  if (v23)
  {
    goto LABEL_8;
  }

  v35 = [v24 data];
  v23 = [v35 length];

  if (!v23)
  {
    goto LABEL_8;
  }

  v36 = [(AMSPaymentSheetRequest *)self performanceMetrics];
  [v36 setResourceRequestStartTime:v20];

  v37 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v37 timeIntervalSince1970];
  v39 = v38;
  v40 = [(AMSPaymentSheetRequest *)self performanceMetrics];
  [v40 setResourceRequestEndTime:v39];

  v41 = [v24 data];

  v42 = CGDataProviderCreateWithCFData(v41);
  v43 = [objc_opt_class() imageTypeForURLResult:v24];
  if (v43 >= 2)
  {
    v33 = v46;
    if (v43 == 2)
    {
      v32 = CGImageCreateWithJPEGDataProvider(v42, 0, 1, kCGRenderingIntentDefault);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = CGImageCreateWithPNGDataProvider(v42, 0, 1, kCGRenderingIntentDefault);
    v33 = v46;
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if ([(AMSPaymentSheetRequest *)self isDesignVersionLessThan:0x1F07798E0])
  {
    v32 = [(AMSPaymentSheetRequest *)self _createImageRefForImageRef:v32 withAdornmentStyle:v45 andDesignVersion:v33];
  }

LABEL_13:

  return v32;
}

- (CGImage)_createImageRefForImageRef:(CGImage *)a3 withAdornmentStyle:(int64_t)a4 andDesignVersion:(id)a5
{
  v8 = a5;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v11 = Width;
  v12 = Height;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 != 3)
      {
        v13 = [(AMSPaymentSheetRequest *)self isDesignVersionEqualOrGreaterThan:0x1F07798E0];
        v14 = 0.236842105;
        if (v13)
        {
          v14 = 0.185185185;
        }

        v15 = v14 * v11;
        v16 = v14 * v12;
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = Width;
        v37.size.height = v12;
        v17 = CGPathCreateWithRoundedRect(v37, v15, v16, 0);
        v18 = self;
        v19 = a3;
        v20 = v17;
        v21 = 4;
        goto LABEL_17;
      }

LABEL_13:
      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      v39.size.width = Width;
      v39.size.height = Height;
      v17 = CGPathCreateWithRoundedRect(v39, v11 * 0.5, v12 * 0.5, 0);
      v18 = self;
      v19 = a3;
      v20 = v17;
      v21 = a4;
      goto LABEL_17;
    }

    if (a4 == 5)
    {
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = Width;
      v40.size.height = Height;
      v17 = CGPathCreateWithRoundedRect(v40, v12 * 0.102564103, v12 * 0.102564103, 0);
      v18 = self;
      v19 = a3;
      v20 = v17;
      v21 = 5;
      goto LABEL_17;
    }

    if (a4 == 6)
    {
      goto LABEL_13;
    }

LABEL_15:
    CGPathRelease(0);
    Image = 0;
    goto LABEL_21;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v25 = Height;
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, 0.0, v11 * 0.032);
      CGPathAddLineToPoint(Mutable, 0, 0.0, v12 - v11 * 0.032);
      CGPathAddArcToPoint(Mutable, 0, 0.0, v12, v11 * 0.032, v12, v11 * 0.032);
      CGPathAddLineToPoint(Mutable, 0, v11 - v11 * 0.473684211, v12);
      CGPathAddArcToPoint(Mutable, 0, Width, v12, Width, v12 - v11 * 0.473684211, v11 * 0.473684211);
      CGPathAddLineToPoint(Mutable, 0, Width, v11 * 0.032);
      CGPathAddArcToPoint(Mutable, 0, Width, 0.0, v11 - v11 * 0.032, 0.0, v11 * 0.032);
      CGPathAddLineToPoint(Mutable, 0, v11 * 0.032, 0.0);
      CGPathAddArcToPoint(Mutable, 0, 0.0, 0.0, 0.0, v11 * 0.032, v11 * 0.032);
      MutableCopy = CGPathCreateMutableCopy(Mutable);
      v28 = [(AMSPaymentSheetRequest *)self _createMaskedImageRefForImageRef:a3 withPathRef:MutableCopy adornmentStyle:1 andDesignVersion:v8];
      if (Mutable)
      {
        CGPathRelease(Mutable);
      }

      if (MutableCopy)
      {
        CGPathRelease(MutableCopy);
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v30 = CGBitmapContextCreate(0, Width, v25, 8uLL, 4 * Width, DeviceRGB, 2u);
      CGContextSetRGBFillColor(v30, 0.0, 0.0, 0.0, 0.0);
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = Width;
      v41.size.height = v12;
      CGContextFillRect(v30, v41);
      CGContextSetRGBFillColor(v30, 0.827000022, 0.827000022, 0.827000022, 1.0);
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = Width;
      v42.size.height = v12;
      v31 = CGPathCreateWithRoundedRect(v42, v11 * 0.0579999983, v12 * 0.0579999983, 0);
      CGContextBeginPath(v30);
      CGContextAddPath(v30, v31);
      CGContextFillPath(v30);
      if (DeviceRGB)
      {
        CGColorSpaceRelease(DeviceRGB);
      }

      if (v31)
      {
        CGPathRelease(v31);
      }

      v32 = v11 * 0.0813999996;
      v33 = v12 * 0.0813999996;
      v43.size.width = v11 + v11 * 0.0813999996 * -2.0;
      v43.size.height = v12 + v12 * 0.0813999996 * -2.0;
      v43.origin.x = v11 * 0.0813999996;
      v43.origin.y = v12 * 0.0813999996;
      CGContextDrawImage(v30, v43, v28);
      if (v28)
      {
        CGImageRelease(v28);
      }

      v34 = v32 * 0.550000012;
      v35 = v11 - v32 - v32 * 0.550000012;
      v36 = v12 - v33 - v33 * 0.550000012;
      CGContextSetRGBStrokeColor(v30, 0.707, 0.707, 0.707, 1.0);
      CGContextSetLineWidth(v30, v11 * 0.0208333333);
      CGContextMoveToPoint(v30, v35, v33 * 0.550000012 + v36);
      CGContextAddLineToPoint(v30, v35, v36 - v33 * 0.550000012);
      CGContextStrokePath(v30);
      CGContextMoveToPoint(v30, v35 - v34, v36);
      CGContextAddLineToPoint(v30, v34 + v35, v36);
      CGContextStrokePath(v30);
      Image = CGBitmapContextCreateImage(v30);
      if (v30)
      {
        CGContextRelease(v30);
      }

      v17 = 0;
      goto LABEL_19;
    }

    if (a4 == 2)
    {
      v38.origin.y = v12 * 0.125;
      v38.size.height = v12 * 0.75;
      v38.origin.x = 0.0;
      v38.size.width = Width;
      v17 = CGPathCreateWithRoundedRect(v38, v12 * 0.375, v12 * 0.375, 0);
      v18 = self;
      v19 = a3;
      v20 = v17;
      v21 = 2;
LABEL_17:
      v22 = [(AMSPaymentSheetRequest *)v18 _createMaskedImageRefForImageRef:v19 withPathRef:v20 adornmentStyle:v21 andDesignVersion:v8];
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v17 = [(AMSPaymentSheetRequest *)self _createBorderPathForAdornmentStyle:0 iconWidth:Width iconHeight:v12];
  v22 = [(AMSPaymentSheetRequest *)self _createDefaultImageWithImageRef:a3 size:v17 borderPath:v11, v12];
LABEL_18:
  Image = v22;
LABEL_19:
  CGPathRelease(v17);
  if (Image)
  {
    CGImageRelease(a3);
  }

LABEL_21:

  return Image;
}

- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)a3 withPathRef:(CGPath *)a4 adornmentStyle:(int64_t)a5 andDesignVersion:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a6;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v12 = Width;
  v13 = Height;
  ColorSpace = CGImageGetColorSpace(a3);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == 1)
  {
    Copy = CGImageCreateCopy(a3);
    goto LABEL_5;
  }

  v16 = Model;
  if (!Model)
  {
    Copy = [(AMSPaymentSheetRequest *)self _createRGBImageRefForGreyScaleImageRef:a3 width:Width height:Height];
LABEL_5:
    v18 = Copy;
    goto LABEL_11;
  }

  v19 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = v21;
    v23 = [(AMSPaymentSheetRequest *)self logKey];
    v24 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    *v36 = 138543874;
    *&v36[4] = v21;
    *&v36[12] = 2114;
    *&v36[14] = v23;
    *&v36[22] = 2114;
    *&v36[24] = v24;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Warning - Attempting to mask image with an unsupported color model: %{public}@", v36, 0x20u);
  }

  v18 = 0;
LABEL_11:
  v25 = [(AMSPaymentSheetRequest *)self _createImageMaskRefWithSize:a4 andPath:v12, v13];
  v26 = CGImageCreateWithMask(v18, v25);
  v27 = CGImageGetWidth(v26);
  v28 = CGImageGetHeight(v26);
  BitsPerComponent = CGImageGetBitsPerComponent(v26);
  BytesPerRow = CGImageGetBytesPerRow(v26);
  v31 = CGBitmapContextCreate(0, v27, v28, BitsPerComponent, BytesPerRow, ColorSpace, 1u);
  CGContextSetInterpolationQuality(v31, kCGInterpolationHigh);
  CGContextSetRGBFillColor(v31, 1.0, 0.0, 0.0, 0.0);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v12;
  v38.size.height = v13;
  CGContextFillRect(v31, v38);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = v12;
  v39.size.height = v13;
  CGContextDrawImage(v31, v39, v26);
  v32 = [(AMSPaymentSheetRequest *)self _shouldDrawGrayBorderForMaskedImageWithDesignVersion:v9];

  if (a4 && v32)
  {
    *v36 = xmmword_193016A10;
    *&v36[16] = unk_193016A20;
    v33 = CGColorCreate(ColorSpace, v36);
    CGContextSetStrokeColorWithColor(v31, v33);
    CGContextSetLineWidth(v31, 2.0);
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = v12;
    v40.size.height = v13;
    CGContextClipToMask(v31, v40, v25);
    CGContextAddPath(v31, a4);
    CGContextDrawPath(v31, kCGPathStroke);
    CGColorRelease(v33);
  }

  Image = CGBitmapContextCreateImage(v31);
  CGContextRelease(v31);
  CGImageRelease(v25);
  CGImageRelease(v26);
  CGImageRelease(v18);
  return Image;
}

- (CGImage)_createRatingImageWithStringValue:(id)a3 assetScale:(float *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSDevice screenScale];
  [v5 floatValue];
  v7 = v6;

  *components = xmmword_193016A30;
  v28 = unk_193016A40;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGColorCreate(DeviceRGB, components);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontLabel, v7 * 9.0, 0);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965658], UIFontForLanguage);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69659D8], v9);
  v12 = CFAttributedStringCreate(0, v4, Mutable);
  v13 = CTFramesetterCreateWithAttributedString(v12);
  v14 = [(__CFString *)v4 length];

  v31.width = 1.79769313e308;
  v30.location = 0;
  v30.length = v14;
  v31.height = 1.79769313e308;
  v15 = CTFramesetterSuggestFrameSizeWithConstraints(v13, v30, 0, v31, 0);
  height = v15.height;
  v17 = ceilf(height);
  v18 = v17 * 0.352941176;
  width = v15.width;
  v20 = ceilf(width) + ceilf(v18) * 2.0;
  v21 = CGBitmapContextCreate(0, v20, vcvtps_u32_f32(height), 8uLL, vcvtd_n_u64_f64(v20, 3uLL), DeviceRGB, 2u);
  CGContextSetShouldAntialias(v21, 1);
  CGContextSetInterpolationQuality(v21, kCGInterpolationHigh);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v20;
  v32.size.height = v17;
  v33 = CGRectInset(v32, 1.0, 1.0);
  v22 = CGPathCreateWithRoundedRect(v33, 6.0, 6.0, 0);
  CGContextAddPath(v21, v22);
  CGContextSetStrokeColorWithColor(v21, v9);
  CGContextSetLineWidth(v21, 1.0);
  CGContextStrokePath(v21);
  v23 = CTLineCreateWithAttributedString(v12);
  CGContextSetTextPosition(v21, v20 * 0.5 - v15.width * 0.5, v17 * 0.5 + v15.height * -0.25 + -1.0);
  CTLineDraw(v23, v21);
  Image = CGBitmapContextCreateImage(v21);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v9);
  CGContextRelease(v21);
  CGPathRelease(v22);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (UIFontForLanguage)
  {
    CFRelease(UIFontForLanguage);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (a4)
  {
    *a4 = v7;
  }

  return Image;
}

- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v7 = a4;
  v8 = a5;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v12 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * a4, DeviceRGB, 1u);
  CGContextSetInterpolationQuality(v12, kCGInterpolationHigh);
  CGContextSetRGBFillColor(v12, 0.0, 0.0, 0.0, 1.0);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v7;
  v15.size.height = v8;
  CGContextFillRect(v12, v15);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v7;
  v16.size.height = v8;
  CGContextDrawImage(v12, v16, a3);
  Image = CGBitmapContextCreateImage(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v12);
  return Image;
}

- (AMSPaymentSheetRequest)init
{
  v6.receiver = self;
  v6.super_class = AMSPaymentSheetRequest;
  v2 = [(AMSPaymentSheetRequest *)&v6 init];
  if (v2)
  {
    v3 = AMSSetLogKeyIfNeeded();
    logKey = v2->_logKey;
    v2->_logKey = v3;
  }

  return v2;
}

- (BOOL)requiresDelegateAuthentication
{
  v2 = [(AMSPaymentSheetRequest *)self delegateAuthenticateChallenge];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)isDesignVersionEqual:(id)a3
{
  v4 = a3;
  v5 = [(AMSPaymentSheetRequest *)self designVersion];
  v6 = [v5 isEqualToNumber:v4];

  return v6;
}

- (BOOL)isDesignVersionEqualOrGreaterThan:(id)a3
{
  v4 = a3;
  v5 = [(AMSPaymentSheetRequest *)self designVersion];

  if (v5)
  {
    v6 = [(AMSPaymentSheetRequest *)self designVersion];
    v7 = [v6 integerValue];
    v8 = v7 >= [v4 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isDesignVersionLessThan:(id)a3
{
  v4 = a3;
  v5 = [(AMSPaymentSheetRequest *)self designVersion];

  if (v5)
  {
    v6 = [(AMSPaymentSheetRequest *)self designVersion];
    v7 = [v6 integerValue];
    v8 = v7 < [v4 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v38 = a3;
  v4 = [(AMSPaymentSheetRequest *)self account];
  [v38 encodeObject:v4 forKey:@"kAccount"];

  v5 = [(AMSPaymentSheetRequest *)self accountHeader];
  [v38 encodeObject:v5 forKey:@"kAccountHeader"];

  [v38 encodeBool:-[AMSPaymentSheetRequest isApplePayClassic](self forKey:{"isApplePayClassic"), @"kApplePayClassic"}];
  v6 = [(AMSPaymentSheetRequest *)self attributedList];
  [v38 encodeObject:v6 forKey:@"kAttributedList"];

  v7 = [(AMSPaymentSheetRequest *)self biometricsRequest];
  [v38 encodeObject:v7 forKey:@"kBiometricsRequest"];

  [v38 encodeInteger:-[AMSPaymentSheetRequest confirmationTitle](self forKey:{"confirmationTitle"), @"kConfirmationTitle"}];
  v8 = [(AMSPaymentSheetRequest *)self countryCode];
  [v38 encodeObject:v8 forKey:@"kCountryCode"];

  v9 = [(AMSPaymentSheetRequest *)self currencyCode];
  [v38 encodeObject:v9 forKey:@"kCurrencyCode"];

  v10 = [(AMSPaymentSheetRequest *)self delegateAuthenticateChallenge];
  [v38 encodeObject:v10 forKey:@"kDelegateAuthenticateChallenge"];

  v11 = [(AMSPaymentSheetRequest *)self designVersion];
  [v38 encodeObject:v11 forKey:@"kDesignVersion"];

  v12 = [(AMSPaymentSheetRequest *)self displayPrice];
  [v38 encodeObject:v12 forKey:@"kDisplayPrice"];

  v13 = [(AMSPaymentSheetRequest *)self explanation];
  [v38 encodeObject:v13 forKey:@"kExplanation"];

  v14 = [(AMSPaymentSheetRequest *)self flexList];
  [v38 encodeObject:v14 forKey:@"kFlexList"];

  v15 = [(AMSPaymentSheetRequest *)self inlineImages];
  [v38 encodeObject:v15 forKey:@"kInlineImages"];

  v16 = [(AMSPaymentSheetRequest *)self logKey];
  [v38 encodeObject:v16 forKey:@"kLogKey"];

  v17 = [(AMSPaymentSheetRequest *)self merchantSession];
  [v38 encodeObject:v17 forKey:@"kMerchantSession"];

  v18 = [(AMSPaymentSheetRequest *)self message];
  [v38 encodeObject:v18 forKey:@"kMessage"];

  [v38 encodeInteger:-[AMSPaymentSheetRequest payee](self forKey:{"payee"), @"kPayee"}];
  v19 = [(AMSPaymentSheetRequest *)self paymentSession];
  [v38 encodeObject:v19 forKey:@"kPaymentSession"];

  v20 = [(AMSPaymentSheetRequest *)self paymentSummary];
  [v38 encodeObject:v20 forKey:@"kPaymentSummary"];

  v21 = [(AMSPaymentSheetRequest *)self preSheetDialog];
  [v38 encodeObject:v21 forKey:@"kPreSheetDialog"];

  v22 = [(AMSPaymentSheetRequest *)self price];
  [v38 encodeObject:v22 forKey:@"kPrice"];

  v23 = [(AMSPaymentSheetRequest *)self priceSectionItems];
  [v38 encodeObject:v23 forKey:@"kPriceSectionItems"];

  v24 = [(AMSPaymentSheetRequest *)self ratingHeader];
  [v38 encodeObject:v24 forKey:@"kRatingHeader"];

  v25 = [(AMSPaymentSheetRequest *)self ratingValue];
  [v38 encodeObject:v25 forKey:@"kRatingValue"];

  [v38 encodeBool:-[AMSPaymentSheetRequest requiresAuthorization](self forKey:{"requiresAuthorization"), @"kRequiresAuthorization"}];
  [v38 encodeInteger:-[AMSPaymentSheetRequest salableIcon](self forKey:{"salableIcon"), @"kSalableIcon"}];
  v26 = [(AMSPaymentSheetRequest *)self salableIconURL];
  [v38 encodeObject:v26 forKey:@"kSalableIconURL"];

  v27 = [(AMSPaymentSheetRequest *)self salableInfo];
  [v38 encodeObject:v27 forKey:@"kSalableInfo"];

  v28 = [(AMSPaymentSheetRequest *)self salableInfoLabel];
  [v38 encodeObject:v28 forKey:@"kSalableInfoLabel"];

  v29 = [(AMSPaymentSheetRequest *)self secondaryFlexList];
  [v38 encodeObject:v29 forKey:@"kSecondaryFlexList"];

  [v38 encodeInteger:-[AMSPaymentSheetRequest secondarySalableIcon](self forKey:{"secondarySalableIcon"), @"kSecondarySalableIcon"}];
  v30 = [(AMSPaymentSheetRequest *)self secondarySalableIconURL];
  [v38 encodeObject:v30 forKey:@"kSecondarySalableIconURL"];

  v31 = [(AMSPaymentSheetRequest *)self secondarySalableInfo];
  [v38 encodeObject:v31 forKey:@"kSecondarySalableInfo"];

  v32 = [(AMSPaymentSheetRequest *)self secondarySalableInfoLabel];
  [v38 encodeObject:v32 forKey:@"kSecondarySalableInfoLabel"];

  v33 = [(AMSPaymentSheetRequest *)self selectedCard];
  [v38 encodeObject:v33 forKey:@"kSelectedCard"];

  [v38 encodeBool:-[AMSPaymentSheetRequest shouldUppercaseText](self forKey:{"shouldUppercaseText"), @"kShouldUppercaseText"}];
  v34 = [(AMSPaymentSheetRequest *)self storeName];
  [v38 encodeObject:v34 forKey:@"kStoreName"];

  v35 = [(AMSPaymentSheetRequest *)self styles];
  [v38 encodeObject:v35 forKey:@"kStyles"];

  v36 = [(AMSPaymentSheetRequest *)self title];
  [v38 encodeObject:v36 forKey:@"kTitle"];

  [v38 encodeInteger:-[AMSPaymentSheetRequest titleType](self forKey:{"titleType"), @"kTitleType"}];
  v37 = [(AMSPaymentSheetRequest *)self userAgent];
  [v38 encodeObject:v37 forKey:@"kUserAgent"];

  [v38 encodeBool:-[AMSPaymentSheetRequest disablePasscodeFallback](self forKey:{"disablePasscodeFallback"), @"kDisablePasscodeFallback"}];
  [v38 encodeBool:-[AMSPaymentSheetRequest drawBackground](self forKey:{"drawBackground"), @"kDrawBackground"}];
  [v38 encodeBool:-[AMSPaymentSheetRequest drawBottomDivider](self forKey:{"drawBottomDivider"), @"kDrawBottomDivider"}];
}

- (AMSPaymentSheetRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v121.receiver = self;
  v121.super_class = AMSPaymentSheetRequest;
  v5 = [(AMSPaymentSheetRequest *)&v121 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAccount"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAccountHeader"];
    accountHeader = v5->_accountHeader;
    v5->_accountHeader = v8;

    v5->_applePayClassic = [v4 decodeBoolForKey:@"kApplePayClassic"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kAttributedList"];
    attributedList = v5->_attributedList;
    v5->_attributedList = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBiometricsRequest"];
    biometricsRequest = v5->_biometricsRequest;
    v5->_biometricsRequest = v17;

    v5->_confirmationTitle = [v4 decodeIntegerForKey:@"kConfirmationTitle"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCountryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCurrencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDelegateAuthenticateChallenge"];
    delegateAuthenticateChallenge = v5->_delegateAuthenticateChallenge;
    v5->_delegateAuthenticateChallenge = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDesignVersion"];
    designVersion = v5->_designVersion;
    v5->_designVersion = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayPrice"];
    displayPrice = v5->_displayPrice;
    v5->_displayPrice = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kExplanation"];
    explanation = v5->_explanation;
    v5->_explanation = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v31 setWithObjects:{v32, v33, v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"kFlexList"];
    flexList = v5->_flexList;
    v5->_flexList = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"kInlineImages"];
    inlineImages = v5->_inlineImages;
    v5->_inlineImages = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = [v46 setWithObjects:{v47, v48, v49, objc_opt_class(), 0}];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"kMerchantSession"];
    merchantSession = v5->_merchantSession;
    v5->_merchantSession = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMessage"];
    message = v5->_message;
    v5->_message = v53;

    v5->_payee = [v4 decodeIntegerForKey:@"kPayee"];
    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentSession"];
    paymentSession = v5->_paymentSession;
    v5->_paymentSession = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentSummary"];
    paymentSummary = v5->_paymentSummary;
    v5->_paymentSummary = v57;

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [v59 setWithObjects:{v60, v61, v62, objc_opt_class(), 0}];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"kPreSheetDialog"];
    preSheetDialog = v5->_preSheetDialog;
    v5->_preSheetDialog = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPrice"];
    price = v5->_price;
    v5->_price = v66;

    v68 = MEMORY[0x1E695DFD8];
    v69 = objc_opt_class();
    v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
    v71 = [v4 decodeObjectOfClasses:v70 forKey:@"kPriceSectionItems"];
    priceSectionItems = v5->_priceSectionItems;
    v5->_priceSectionItems = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRatingHeader"];
    ratingHeader = v5->_ratingHeader;
    v5->_ratingHeader = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRatingValue"];
    ratingValue = v5->_ratingValue;
    v5->_ratingValue = v75;

    v5->_requiresAuthorization = [v4 decodeBoolForKey:@"kRequiresAuthorization"];
    v5->_salableIcon = [v4 decodeIntegerForKey:@"kSalableIcon"];
    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSalableIconURL"];
    salableIconURL = v5->_salableIconURL;
    v5->_salableIconURL = v77;

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = objc_opt_class();
    v82 = objc_opt_class();
    v83 = [v79 setWithObjects:{v80, v81, v82, objc_opt_class(), 0}];
    v84 = [v4 decodeObjectOfClasses:v83 forKey:@"kSalableInfo"];
    salableInfo = v5->_salableInfo;
    v5->_salableInfo = v84;

    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSalableInfoLabel"];
    salableInfoLabel = v5->_salableInfoLabel;
    v5->_salableInfoLabel = v86;

    v88 = MEMORY[0x1E695DFD8];
    v89 = objc_opt_class();
    v90 = objc_opt_class();
    v91 = objc_opt_class();
    v92 = [v88 setWithObjects:{v89, v90, v91, objc_opt_class(), 0}];
    v93 = [v4 decodeObjectOfClasses:v92 forKey:@"kSecondaryFlexList"];
    secondaryFlexList = v5->_secondaryFlexList;
    v5->_secondaryFlexList = v93;

    v5->_secondarySalableIcon = [v4 decodeIntegerForKey:@"kSecondarySalableIcon"];
    v95 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSecondarySalableIconURL"];
    secondarySalableIconURL = v5->_secondarySalableIconURL;
    v5->_secondarySalableIconURL = v95;

    v97 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v99 = objc_opt_class();
    v100 = objc_opt_class();
    v101 = [v97 setWithObjects:{v98, v99, v100, objc_opt_class(), 0}];
    v102 = [v4 decodeObjectOfClasses:v101 forKey:@"kSecondarySalableInfo"];
    secondarySalableInfo = v5->_secondarySalableInfo;
    v5->_secondarySalableInfo = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSecondarySalableInfoLabel"];
    secondarySalableInfoLabel = v5->_secondarySalableInfoLabel;
    v5->_secondarySalableInfoLabel = v104;

    v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedCard"];
    selectedCard = v5->_selectedCard;
    v5->_selectedCard = v106;

    v5->_shouldUppercaseText = [v4 decodeBoolForKey:@"kShouldUppercaseText"];
    v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStoreName"];
    storeName = v5->_storeName;
    v5->_storeName = v108;

    v110 = MEMORY[0x1E695DFD8];
    v111 = objc_opt_class();
    v112 = objc_opt_class();
    v113 = [v110 setWithObjects:{v111, v112, objc_opt_class(), 0}];
    v114 = [v4 decodeObjectOfClasses:v113 forKey:@"kStyles"];
    styles = v5->_styles;
    v5->_styles = v114;

    v116 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitle"];
    title = v5->_title;
    v5->_title = v116;

    v5->_titleType = [v4 decodeIntegerForKey:@"kTitleType"];
    v118 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUserAgent"];
    userAgent = v5->_userAgent;
    v5->_userAgent = v118;

    v5->_disablePasscodeFallback = [v4 decodeBoolForKey:@"kDisablePasscodeFallback"];
    v5->_drawBackground = [v4 decodeBoolForKey:@"kDrawBackground"];
    v5->_drawBottomDivider = [v4 decodeBoolForKey:@"kDrawBottomDivider"];
  }

  return v5;
}

- (NSDictionary)objectForLogging
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSPaymentSheetRequest *)self account];
  [v3 ams_setNullableObject:v4 forKey:@"account"];

  v5 = [(AMSPaymentSheetRequest *)self accountHeader];
  [v3 ams_setNullableObject:v5 forKey:@"accountHeader"];

  if ([(AMSPaymentSheetRequest *)self isApplePayClassic])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  [v3 ams_setNullableObject:v6 forKey:@"applePayClassic"];
  v7 = [(AMSPaymentSheetRequest *)self attributedList];
  [v3 ams_setNullableObject:v7 forKey:@"attributedList"];

  v8 = [(AMSPaymentSheetRequest *)self biometricsRequest];
  [v3 ams_setNullableObject:v8 forKey:@"biometricsRequest"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSPaymentSheetRequest confirmationTitle](self, "confirmationTitle")}];
  [v3 ams_setNullableObject:v9 forKey:@"confirmationTitle"];

  v10 = [(AMSPaymentSheetRequest *)self countryCode];
  [v3 ams_setNullableObject:v10 forKey:@"countryCode"];

  v11 = [(AMSPaymentSheetRequest *)self currencyCode];
  [v3 ams_setNullableObject:v11 forKey:@"currencyCode"];

  v12 = [(AMSPaymentSheetRequest *)self delegateAuthenticateChallenge];
  [v3 ams_setNullableObject:v12 forKey:@"delegateAuthenticateChallenge"];

  v13 = [(AMSPaymentSheetRequest *)self designVersion];
  [v3 ams_setNullableObject:v13 forKey:@"designVersion"];

  v14 = [(AMSPaymentSheetRequest *)self displayPrice];
  [v3 ams_setNullableObject:v14 forKey:@"displayPrice"];

  v15 = [(AMSPaymentSheetRequest *)self explanation];
  [v3 ams_setNullableObject:v15 forKey:@"explanation"];

  v16 = [(AMSPaymentSheetRequest *)self flexList];
  [v3 ams_setNullableObject:v16 forKey:@"flexList"];

  v17 = [(AMSPaymentSheetRequest *)self inlineImages];
  [v3 ams_setNullableObject:v17 forKey:@"inlineImages"];

  v18 = [(AMSPaymentSheetRequest *)self logKey];
  [v3 ams_setNullableObject:v18 forKey:@"logKey"];

  v19 = [(AMSPaymentSheetRequest *)self merchantSession];
  [v3 ams_setNullableObject:v19 forKey:@"merchantSession"];

  v20 = [(AMSPaymentSheetRequest *)self message];
  [v3 ams_setNullableObject:v20 forKey:@"message"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSPaymentSheetRequest payee](self, "payee")}];
  [v3 ams_setNullableObject:v21 forKey:@"payee"];

  v22 = [(AMSPaymentSheetRequest *)self paymentSession];
  [v3 ams_setNullableObject:v22 forKey:@"paymentSession"];

  v23 = [(AMSPaymentSheetRequest *)self paymentSummary];
  [v3 ams_setNullableObject:v23 forKey:@"paymentSummary"];

  v24 = [(AMSPaymentSheetRequest *)self preSheetDialog];
  [v3 ams_setNullableObject:v24 forKey:@"preSheetDialog"];

  v25 = [(AMSPaymentSheetRequest *)self priceSectionItems];
  [v3 ams_setNullableObject:v25 forKey:@"priceSectionItems"];

  v26 = [(AMSPaymentSheetRequest *)self ratingHeader];
  [v3 ams_setNullableObject:v26 forKey:@"ratingHeader"];

  v27 = [(AMSPaymentSheetRequest *)self ratingValue];
  [v3 ams_setNullableObject:v27 forKey:@"ratingValue"];

  if ([(AMSPaymentSheetRequest *)self requiresAuthorization])
  {
    v28 = @"true";
  }

  else
  {
    v28 = @"false";
  }

  [v3 ams_setNullableObject:v28 forKey:@"requiresAuthorization"];
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSPaymentSheetRequest salableIcon](self, "salableIcon")}];
  [v3 ams_setNullableObject:v29 forKey:@"salableIcon"];

  v30 = [(AMSPaymentSheetRequest *)self salableIconURL];
  [v3 ams_setNullableObject:v30 forKey:@"salableIconURL"];

  v31 = [(AMSPaymentSheetRequest *)self salableInfo];
  [v3 ams_setNullableObject:v31 forKey:@"salableInfo"];

  v32 = [(AMSPaymentSheetRequest *)self salableInfoLabel];
  [v3 ams_setNullableObject:v32 forKey:@"salableInfoLabel"];

  v33 = [(AMSPaymentSheetRequest *)self secondaryFlexList];
  [v3 ams_setNullableObject:v33 forKey:@"secondaryFlexList"];

  v34 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSPaymentSheetRequest secondarySalableIcon](self, "secondarySalableIcon")}];
  [v3 ams_setNullableObject:v34 forKey:@"secondarySalableIcon"];

  v35 = [(AMSPaymentSheetRequest *)self secondarySalableIconURL];
  [v3 ams_setNullableObject:v35 forKey:@"secondarySalableIconURL"];

  v36 = [(AMSPaymentSheetRequest *)self secondarySalableInfo];
  [v3 ams_setNullableObject:v36 forKey:@"secondarySalableInfo"];

  v37 = [(AMSPaymentSheetRequest *)self secondarySalableInfoLabel];
  [v3 ams_setNullableObject:v37 forKey:@"secondarySalableInfoLabel"];

  v38 = [(AMSPaymentSheetRequest *)self selectedCard];
  [v3 ams_setNullableObject:v38 forKey:@"selectedCard"];

  if ([(AMSPaymentSheetRequest *)self shouldUppercaseText])
  {
    v39 = @"true";
  }

  else
  {
    v39 = @"false";
  }

  [v3 ams_setNullableObject:v39 forKey:@"shouldUppercaseText"];
  v40 = [(AMSPaymentSheetRequest *)self storeName];
  [v3 ams_setNullableObject:v40 forKey:@"storeName"];

  v41 = [(AMSPaymentSheetRequest *)self styles];
  [v3 ams_setNullableObject:v41 forKey:@"styles"];

  v42 = [(AMSPaymentSheetRequest *)self title];
  [v3 ams_setNullableObject:v42 forKey:@"title"];

  v43 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSPaymentSheetRequest titleType](self, "titleType")}];
  [v3 ams_setNullableObject:v43 forKey:@"titleType"];

  v44 = [(AMSPaymentSheetRequest *)self userAgent];
  [v3 ams_setNullableObject:v44 forKey:@"userAgent"];

  if ([(AMSPaymentSheetRequest *)self disablePasscodeFallback])
  {
    v45 = @"true";
  }

  else
  {
    v45 = @"false";
  }

  [v3 ams_setNullableObject:v45 forKey:@"disablePasscodeFallback"];
  if ([(AMSPaymentSheetRequest *)self drawBackground])
  {
    v46 = @"true";
  }

  else
  {
    v46 = @"false";
  }

  [v3 ams_setNullableObject:v46 forKey:@"drawBackground"];
  if ([(AMSPaymentSheetRequest *)self drawBottomDivider])
  {
    v47 = @"true";
  }

  else
  {
    v47 = @"false";
  }

  [v3 ams_setNullableObject:v47 forKey:@"drawBottomDivider"];

  return v3;
}

@end