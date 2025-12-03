@interface MFAddressConcatenator
+ (id)defaultRecipientListConcatenator;
- (id)commaSeparatedAddressListWithAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block;
- (void)getCommaSeparatedAddressList:(id *)list andListSuffix:(id *)suffix withAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block;
@end

@implementation MFAddressConcatenator

+ (id)defaultRecipientListConcatenator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MFAddressConcatenator_defaultRecipientListConcatenator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultRecipientListConcatenator_onceToken != -1)
  {
    dispatch_once(&defaultRecipientListConcatenator_onceToken, block);
  }

  v2 = defaultRecipientListConcatenator___context;

  return v2;
}

void __57__MFAddressConcatenator_defaultRecipientListConcatenator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultRecipientListConcatenator___context;
  defaultRecipientListConcatenator___context = v1;

  v3 = defaultRecipientListConcatenator___context;
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v13 localizedStringForKey:@"AND_N_MORE" value:&stru_1F3CF3758 table:@"Main"];
  [v3 setAndNMoreFormat:v4];

  v5 = defaultRecipientListConcatenator___context;
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v14 localizedStringForKey:@"AND_N_MORE_NO_ELLIPSIS" value:&stru_1F3CF3758 table:@"Main"];
  [v5 setAndNMoreNoEllipsisFormat:v6];

  v7 = defaultRecipientListConcatenator___context;
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v15 localizedStringForKey:@"N_RECIPIENTS" value:&stru_1F3CF3758 table:@"Main"];
  [v7 setNAddressesFormat:v8];

  v9 = defaultRecipientListConcatenator___context;
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v16 localizedStringForKey:@"ONE_RECIPIENT" value:&stru_1F3CF3758 table:@"Main"];
  [v9 setOneAddressFormat:v10];

  v11 = defaultRecipientListConcatenator___context;
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v17 localizedStringForKey:@"TRUNCATED_RECIPIENT_FORMAT" value:&stru_1F3CF3758 table:@"Main"];
  [v11 setTruncatedAddressFormat:v12];
}

- (void)getCommaSeparatedAddressList:(id *)list andListSuffix:(id *)suffix withAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block
{
  indexCopy = index;
  atIndexCopy = atIndex;
  blockCopy = block;
  selfCopy = self;
  v15 = 0;
  v43 = atIndexCopy;
  v44 = 0;
  v45 = blockCopy;
  v16 = &stru_1F3CF3758;
  v41 = indexCopy;
  selfCopy2 = self;
  while (v15 < count)
  {
    if (indexCopy)
    {
      v17 = indexCopy[2](indexCopy, v15);
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = 0;
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    if (!v17)
    {
      v17 = MFLocalizedAddressSeparator();
    }

LABEL_9:
    if (v17)
    {
      v18 = [@"‌" stringByAppendingString:v17];
    }

    else
    {
      v18 = 0;
    }

    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__10;
    v64 = __Block_byref_object_dispose__10;
    v65 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __155__MFAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke;
    aBlock[3] = &unk_1E80706A8;
    v58 = v15;
    countCopy = count;
    v57 = &v60;
    v16 = v16;
    v55 = v16;
    v19 = v18;
    v56 = v19;
    v20 = _Block_copy(aBlock);
    v21 = v43[2](v43, v15);
    v22 = (v20)[2](v20, v21, selfCopy->_andNMoreFormat);
    v23 = v45[2](v45, v22, v61[5]);
    v24 = v23;
    if (v23)
    {
      v25 = v22;

      v26 = v61[5];
      ++v15;
      v44 = v26;
LABEL_26:
      v16 = v25;
      goto LABEL_27;
    }

    if (!-[__CFString length](v16, "length") && selfCopy->_truncatedAddressFormat && selfCopy->_andNMoreNoEllipsisFormat && [v21 length] >= 2)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __155__MFAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_2;
      v51[3] = &unk_1E80706D0;
      v53 = v20;
      v51[4] = selfCopy;
      v37 = v21;
      v52 = v37;
      v35 = _Block_copy(v51);
      v38 = [v37 length] - 1;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __155__MFAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_3;
      v47[3] = &unk_1E80706F8;
      v48 = v45;
      v36 = v35;
      v49 = v36;
      v50 = &v60;
      v29 = MFLastIndexPassingTest(v38, v47);
      selfCopy = selfCopy2;
      if (v29)
      {
        v30 = v36;
        if (v29 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = v36[2](v36);

          v32 = v61[5];
          v44 = v32;
          v16 = v31;
          indexCopy = v41;
          selfCopy = selfCopy2;
        }
      }

      else
      {
        v30 = v36;
      }
    }

    if ([(__CFString *)v16 length])
    {
      goto LABEL_28;
    }

    if (count < 2 || !selfCopy->_nAddressesFormat)
    {
      v25 = selfCopy->_oneAddressFormat;

      goto LABEL_26;
    }

    v27 = [MEMORY[0x1E696ADA0] ef_formatInteger:count withGrouping:1];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:selfCopy->_nAddressesFormat, v27];

    v16 = v28;
    indexCopy = v41;
LABEL_27:
    selfCopy = selfCopy2;
LABEL_28:

    _Block_object_dispose(&v60, 8);
    if ((v24 & 1) == 0)
    {
      break;
    }
  }

  v33 = v16;
  *list = v16;
  v34 = v44;
  *suffix = v34;
}

id __155__MFAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64) - 1;
  if (v8 <= v7)
  {
    v13 = *(*(a1 + 48) + 8);
    v9 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696ADA0] ef_formatInteger:v8 - v7 withGrouping:1];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v14 = *(a1 + 40);
  v15 = &stru_1F3CF3758;
  if (!v14)
  {
    v14 = &stru_1F3CF3758;
  }

  if (v5)
  {
    v15 = v5;
  }

  v16 = [*(a1 + 32) stringByAppendingFormat:@"%@%@", v14, v15];

  return v16;
}

id __155__MFAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 40);
  v6 = [*(a1 + 40) substringToIndex:a2];
  v7 = [v3 stringWithFormat:v5, v6];
  v8 = (*(v4 + 16))(v4, v7, *(*(a1 + 32) + 16));

  return v8;
}

uint64_t __155__MFAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[5] + 16))();
  v4 = (*(v2 + 16))(v2, v3, *(*(a1[6] + 8) + 40));

  return v4;
}

- (id)commaSeparatedAddressListWithAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block
{
  indexCopy = index;
  atIndexCopy = atIndex;
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__MFAddressConcatenator_commaSeparatedAddressListWithAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke;
  aBlock[3] = &unk_1E8070720;
  v13 = blockCopy;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v20 = 0;
  v21 = 0;
  [(MFAddressConcatenator *)self getCommaSeparatedAddressList:&v21 andListSuffix:&v20 withAddressCount:count prefixForAddressAtIndex:indexCopy stringForAddressAtIndex:atIndexCopy lengthValidationBlock:v14];
  v15 = v21;
  v16 = v20;
  if (v16)
  {
    v17 = [v15 stringByAppendingString:v16];
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v18;
}

uint64_t __137__MFAddressConcatenator_commaSeparatedAddressListWithAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v5 stringByAppendingString:v6];
  }

  else
  {
    v8 = v5;
  }

  v9 = (*(v7 + 16))(v7, v8);
  if (v6)
  {
  }

  return v9;
}

@end