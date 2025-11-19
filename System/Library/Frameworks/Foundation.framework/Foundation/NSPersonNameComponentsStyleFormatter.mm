@interface NSPersonNameComponentsStyleFormatter
@end

@implementation NSPersonNameComponentsStyleFormatter

uint64_t __62___NSPersonNameComponentsStyleFormatter_orderedKeysOfInterest__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) keysOfInterest];

  return [v3 containsObject:a2];
}

id __62___NSPersonNameComponentsStyleFormatter_orderedKeysOfInterest__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "orderedTemplate")];
  if (result)
  {
    v4 = result;
    if (*(a1 + 48) == 1)
    {
      [result insertString:@"phoneticRepresentation." atIndex:0];
    }

    v5 = *(a1 + 40);

    return [v5 addObject:v4];
  }

  return result;
}

uint64_t __76___NSPersonNameComponentsStyleFormatter__orderedNonEmptyKeysFromComponents___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForKeyPath:a2];
  if (result)
  {
    return [objc_msgSend(*(a1 + 32) valueForKeyPath:{a2), "length"}] != 0;
  }

  return result;
}

uint64_t __102___NSPersonNameComponentsStyleFormatter__formattedStringFromOrderedKeys_components_attributesByRange___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v4 = a2;
  v6 = [*(a1 + 32) valueForKeyPath:a2];
  if ([objc_msgSend(*(a1 + 40) "masterFormatter")] && objc_msgSend(v4, "hasPrefix:", @"phoneticRepresentation."))
  {
    v4 = [v4 substringFromIndex:{objc_msgSend(@"phoneticRepresentation.", "length")}];
  }

  if ([objc_msgSend(*(a1 + 40) "abbreviatedKeys")])
  {
    v6 = [NSPersonNameComponentsFormatter __initialsForString:v6];
  }

  if (a3)
  {
    v7 = [*(a1 + 32) valueForKeyPath:{objc_msgSend(*(a1 + 48), "objectAtIndexedSubscript:", a3 - 1)}];
    if ([v7 length])
    {
      a3 = [*(a1 + 40) _delimiterBetweenString:v7 andString:v6 isPhonetic:{objc_msgSend(objc_msgSend(*(a1 + 40), "masterFormatter"), "isPhonetic")}];
    }

    else
    {
      a3 = 0;
    }
  }

  result = [v6 length];
  if (result)
  {
    v9 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [*(*(*(a1 + 64) + 8) + 40) length], objc_msgSend(a3, "length"));
    v10 = [*(a1 + 56) objectForKey:v9];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      [*(a1 + 56) setObject:v10 forKey:v9];
    }

    [v10 setObject:@"delimiter" forKey:@"NSPersonNameComponentKey"];
    if (a3)
    {
      [*(*(*(a1 + 64) + 8) + 40) appendString:a3];
    }

    if (*(a1 + 56))
    {
      v11 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [*(*(*(a1 + 64) + 8) + 40) length], objc_msgSend(v6, "length"));
      v12 = [*(a1 + 56) objectForKey:v11];
      if (!v12)
      {
        v12 = [MEMORY[0x1E695DF90] dictionary];
        [*(a1 + 56) setObject:v12 forKeyedSubscript:v11];
      }

      [v12 setObject:v4 forKeyedSubscript:@"NSPersonNameComponentKey"];
    }

    v13 = *(*(*(a1 + 64) + 8) + 40);

    return [v13 appendString:v6];
  }

  return result;
}

uint64_t __81___NSPersonNameComponentsStyleFormatter_annotatedStringFromPersonNameComponents___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 rangeValue];
  v7 = *(a1 + 32);

  return [v7 addAttributes:a3 range:{v6, v5}];
}

@end