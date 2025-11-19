@interface _HKXMLTranslator
- (_HKXMLTranslator)initWithXSL:(id)a3 localizationTableName:(id)a4 localizationOverride:(id)a5;
- (id)_localizeXSL:(id)a3 localizationTableName:(id)a4 localizationOverride:(id)a5;
- (id)convertToHTMLFromXML:(id)a3;
- (void)dealloc;
@end

@implementation _HKXMLTranslator

- (_HKXMLTranslator)initWithXSL:(id)a3 localizationTableName:(id)a4 localizationOverride:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _HKXMLTranslator;
  v11 = [(_HKXMLTranslator *)&v19 init];
  v12 = v11;
  if (v11)
  {
    if (v9 | v10)
    {
      v13 = [(_HKXMLTranslator *)v11 _localizeXSL:v8 localizationTableName:v9 localizationOverride:v10];
    }

    else
    {
      v13 = v8;
    }

    v14 = v13;
    Memory = xmlReadMemory([v13 bytes], objc_msgSend(v13, "length"), 0, 0, 0);
    if (Memory)
    {
      v16 = Memory;
      v17 = xsltParseStylesheetDoc(Memory);
      v12->_stylesheet = v17;
      if (!v17)
      {
        xmlFreeDoc(v16);
      }
    }

    else
    {
      v12->_stylesheet = 0;

      v12 = 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  stylesheet = self->_stylesheet;
  if (stylesheet)
  {
    xsltFreeStylesheet(stylesheet);
    self->_stylesheet = 0;
  }

  v4.receiver = self;
  v4.super_class = _HKXMLTranslator;
  [(_HKXMLTranslator *)&v4 dealloc];
}

- (id)convertToHTMLFromXML:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  Memory = xmlReadMemory(v7, v8, "content.xml", 0, 0);
  if (Memory)
  {
    v10 = Memory;
    v11 = xsltApplyStylesheet(self->_stylesheet, Memory, 0);
    if (v11)
    {
      v12 = v11;
      mem = 0;
      size = 0;
      xmlDocDumpFormatMemory(v11, &mem, &size, 1);
      if (mem)
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [v13 initWithBytes:mem length:size encoding:5];
        free(mem);
      }

      else
      {
        v14 = 0;
      }

      xmlFreeDoc(v12);
    }

    else
    {
      v14 = 0;
    }

    xmlFreeDoc(v10);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_localizeXSL:(id)a3 localizationTableName:(id)a4 localizationOverride:(id)a5
{
  v7 = a3;
  v36 = a4;
  v8 = a5;
  v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [@"@@" dataUsingEncoding:4];
  v38 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v10 = [v7 length];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v34 = v7;
    v35 = v9;
    while (1)
    {
      v13 = [v7 rangeOfData:v9 options:0 range:{v12, v11}];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v7 subdataWithRange:{v12, v11}];
        [v38 appendData:v17];
        goto LABEL_13;
      }

      v15 = v13;
      v16 = v14;
      v17 = [v7 subdataWithRange:{v12, v13 - v12}];
      [v38 appendData:v17];
      v18 = v15 + v16;
      v19 = [v7 length];
      v20 = v19 - (v15 + v16);
      v21 = [v7 rangeOfData:v9 options:0 range:{v18, v19 - v18}];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      v25 = [v7 subdataWithRange:{v18, v21 - v18}];
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v25 encoding:4];
      v27 = [v37 localizedStringForKey:v26 value:&stru_1F05FF230 table:v36];
      if (v8)
      {
        v28 = [v8 objectForKey:v26];
        v29 = v28;
        if (v28)
        {
          v30 = v28;

          v27 = v30;
          v7 = v34;
        }
      }

      v31 = [v27 dataUsingEncoding:4];
      [v38 appendData:v31];
      v12 = v23 + v24;
      v11 = [v7 length] - v12;

      v9 = v35;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v32 = [v7 subdataWithRange:{v15, v20}];
    [v38 appendData:v32];

LABEL_13:
  }

LABEL_14:

  return v38;
}

@end