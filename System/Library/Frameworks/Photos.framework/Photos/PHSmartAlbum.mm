@interface PHSmartAlbum
+ (id)albumKindFromSmartAlbumSubtype:(int64_t)subtype;
+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options;
@end

@implementation PHSmartAlbum

+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options
{
  predicateCopy = predicate;
  v29.receiver = self;
  v29.super_class = &OBJC_METACLASS___PHSmartAlbum;
  v7 = objc_msgSendSuper2(&v29, sel_fetchPredicateFromComparisonPredicate_options_, predicateCopy, options);
  if (!v7)
  {
    leftExpression = [predicateCopy leftExpression];
    rightExpression = [predicateCopy rightExpression];
    expressionType = [leftExpression expressionType];
    if (expressionType == 3)
    {
      v11 = leftExpression;
    }

    else
    {
      v11 = rightExpression;
    }

    keyPath = [v11 keyPath];
    if ([keyPath isEqualToString:@"assetCollectionSubtype"])
    {
      if (expressionType == 3)
      {
        v13 = rightExpression;
      }

      else
      {
        v13 = leftExpression;
      }

      constantValue = [v13 constantValue];
      _collectionSubtypeExpressionForFetchRequests = [self _collectionSubtypeExpressionForFetchRequests];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __62__PHSmartAlbum_fetchPredicateFromComparisonPredicate_options___block_invoke;
      v28[3] = &__block_descriptor_40_e8__16__0_8l;
      v28[4] = self;
      v27 = constantValue;
      v15 = PHQueryTransformExpressionConstantValue(constantValue, v28);
      v16 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v15];
      v17 = objc_alloc(MEMORY[0x1E696AB18]);
      comparisonPredicateModifier = [predicateCopy comparisonPredicateModifier];
      predicateOperatorType = [predicateCopy predicateOperatorType];
      options = [predicateCopy options];
      v21 = v17;
      if (expressionType == 3)
      {
        v22 = _collectionSubtypeExpressionForFetchRequests;
        v23 = _collectionSubtypeExpressionForFetchRequests;
        v24 = v16;
      }

      else
      {
        v23 = v16;
        v22 = _collectionSubtypeExpressionForFetchRequests;
        v24 = _collectionSubtypeExpressionForFetchRequests;
      }

      v7 = [v21 initWithLeftExpression:v23 rightExpression:v24 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t __62__PHSmartAlbum_fetchPredicateFromComparisonPredicate_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [v4 albumKindFromSmartAlbumSubtype:v3];
}

+ (id)albumKindFromSmartAlbumSubtype:(int64_t)subtype
{
  if (subtype > 1000000200)
  {
    if (subtype <= 1000000210)
    {
      v4 = 1000000203;
      v12 = &unk_1F102C080;
      v13 = &unk_1F102BFD8;
      if (subtype != 1000000206)
      {
        v13 = 0;
      }

      if (subtype != 1000000205)
      {
        v12 = v13;
      }

      if (subtype == 1000000204)
      {
        v5 = &unk_1F102BFA8;
      }

      else
      {
        v5 = v12;
      }

      v8 = 1000000201;
      v9 = &unk_1F102C098;
      if (subtype == 1000000203)
      {
        v10 = &unk_1F102C0B0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v4 = 1000000214;
      v5 = &unk_1F102C050;
      v6 = &unk_1F102C0F8;
      if (subtype != 1000000219)
      {
        v6 = 0;
      }

      if (subtype == 1000000218)
      {
        v7 = &unk_1F102C0E0;
      }

      else
      {
        v7 = v6;
      }

      if (subtype != 1000000215)
      {
        v5 = v7;
      }

      v8 = 1000000211;
      v9 = &unk_1F102C068;
      v10 = &unk_1F102C0C8;
      v11 = &unk_1F102C008;
      if (subtype != 1000000214)
      {
        v11 = 0;
      }

      if (subtype != 1000000212)
      {
        v10 = v11;
      }
    }

    if (subtype == v8)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (subtype <= v4)
    {
      return v14;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(subtype)
    {
      case 201:
        result = &unk_1F102BE28;
        break;
      case 202:
        result = &unk_1F102BE58;
        break;
      case 203:
        result = &unk_1F102BE70;
        break;
      case 204:
        result = &unk_1F102BEA0;
        break;
      case 205:
        result = &unk_1F102BEE8;
        break;
      case 206:
        result = &unk_1F102BF00;
        break;
      case 207:
        result = &unk_1F102BF30;
        break;
      case 208:
        result = &unk_1F102BE88;
        break;
      case 209:
        result = &unk_1F102BF18;
        break;
      case 210:
        result = &unk_1F102BEB8;
        break;
      case 211:
        result = &unk_1F102BED0;
        break;
      case 212:
        result = &unk_1F102BF48;
        break;
      case 213:
        result = &unk_1F102BF60;
        break;
      case 214:
        result = &unk_1F102BF78;
        break;
      case 215:
        result = &unk_1F102BF90;
        break;
      case 216:
        result = &unk_1F102BFC0;
        break;
      case 217:
        result = &unk_1F102C020;
        break;
      case 218:
        result = &unk_1F102C038;
        break;
      case 219:
        result = &unk_1F102BE40;
        break;
      case 220:
        result = &unk_1F102BFF0;
        break;
      case 221:
        result = &unk_1F102C110;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

@end