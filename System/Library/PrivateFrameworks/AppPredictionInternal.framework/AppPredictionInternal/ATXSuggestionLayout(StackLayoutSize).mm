@interface ATXSuggestionLayout(StackLayoutSize)
+ (id)uiLayoutTypesForStackLayoutSize:()StackLayoutSize;
@end

@implementation ATXSuggestionLayout(StackLayoutSize)

+ (id)uiLayoutTypesForStackLayoutSize:()StackLayoutSize
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v4 = objc_autoreleasePoolPush();
      v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_283A576C8, &unk_283A576E0, &unk_283A576F8, &unk_283A57710, &unk_283A57728, &unk_283A57740, &unk_283A57758, &unk_283A57770, 0}];
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_283A57698, &unk_283A576B0, &unk_283A576C8, 0, v9, v10, v11, v12, v13}];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v4 = objc_autoreleasePoolPush();
        v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_283A57788, &unk_283A577A0, 0, v8, v9, v10, v11, v12, v13}];
        break;
      case 3:
        v3 = objc_opt_new();
        goto LABEL_13;
      case 4:
        v4 = objc_autoreleasePoolPush();
        v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_283A577B8, 0, v7, v8, v9, v10, v11, v12, v13}];
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = v5;
  objc_autoreleasePoolPop(v4);
LABEL_13:

  return v3;
}

@end