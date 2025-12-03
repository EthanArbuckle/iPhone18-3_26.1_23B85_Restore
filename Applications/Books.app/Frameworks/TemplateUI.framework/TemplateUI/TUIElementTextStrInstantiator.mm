@interface TUIElementTextStrInstantiator
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextStrInstantiator

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  contextCopy = context;
  v12 = [attributesCopy stringForAttribute:102 node:node.var0];
  v13 = sub_5E5B8(v12, [builderCopy options]);

  v14 = [attributesCopy stringForAttribute:217 node:node.var0];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_26;
  }

  v16 = v14;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_2E6250 != -1)
  {
    sub_199D60();
  }

  if ([v16 rangeOfCharacterFromSet:qword_2E6248] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [NSString stringWithFormat:@"<body>%@</body>", v16];
    v20 = [v19 dataUsingEncoding:4];
    v21 = v20;
    if (v20 && (MemoryParserCtxt = htmlCreateMemoryParserCtxt([v20 bytes], objc_msgSend(v20, "length"))) != 0)
    {
      v23 = MemoryParserCtxt;
      Memory = htmlCtxtReadMemory(MemoryParserCtxt, [v21 bytes], objc_msgSend(v21, "length"), "http://baseurl/baseurl.html", "UTF-8", 10336);
      v31 = Memory;
      if (!Memory)
      {
        Memory = htmlCtxtReadMemory(v23, [v21 bytes], objc_msgSend(v21, "length"), "http://baseurl/baseurl.html", "UTF-8", 10337);
      }

      htmlFreeParserCtxt(v23);

      if (Memory)
      {
        RootElement = xmlDocGetRootElement(Memory);
        if (RootElement)
        {
          v18 = sub_60324(RootElement, 0, (v31 != 0) & (v13 >> 1));
        }

        else
        {
          v18 = 0;
        }

        xmlFreeDoc(Memory);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0;
  }

  else
  {
LABEL_6:
    v17 = [[TUIStringTextFragment alloc] initWithString:v16];
    v37 = v17;
    v18 = [NSArray arrayWithObjects:&v37 count:1];
  }

LABEL_18:

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v18;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v32 + 1) + 8 * i) appendToBuilder:builderCopy context:contextCopy];
      }

      v28 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v28);
  }

LABEL_26:
}

@end