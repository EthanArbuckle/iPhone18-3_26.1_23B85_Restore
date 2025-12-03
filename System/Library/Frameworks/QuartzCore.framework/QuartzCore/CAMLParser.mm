@interface CAMLParser
+ (id)parseContentsOfURL:(id)l;
+ (id)parser;
- (BOOL)parseBytes:(const char *)bytes length:(unint64_t)length;
- (BOOL)parseContentsOfURL:(id)l;
- (BOOL)parseData:(id)data;
- (BOOL)parseString:(id)string;
- (CAMLParser)init;
- (id)attributeForKey:(id)key remove:(BOOL)remove;
- (id)didFailToLoadResourceFromURL:(id)l;
- (id)elementValue;
- (id)objectById:(id)id;
- (id)willLoadResourceFromURL:(id)l;
- (void)dealloc;
- (void)parserError:(id)error;
- (void)parserWarning:(id)warning;
- (void)setDelegate:(id)delegate;
- (void)setElementValue:(id)value;
@end

@implementation CAMLParser

+ (id)parser
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CAMLParser)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAMLParser;
  v2 = [(CAMLParser *)&v8 init];
  if (v2)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_type_zone_malloc(malloc_zone, 0x78uLL, 0x165299FDuLL);
    v4 = v3;
    if (v3)
    {
      *(v3 + 9) = 0;
      *(v3 + 10) = v2;
      *(v3 + 56) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 8) = 0u;
      *v3 = &unk_1EF1FA3E0;
      *(v3 + 11) = 0;
      *(v3 + 12) = 0;
      *(v3 + 13) = 0;
      v3[112] = 0;
      if (CAML::ObjCContext::_builtin_types_once[0] != -1)
      {
        dispatch_once_f(CAML::ObjCContext::_builtin_types_once, 0, CAML::ObjCContext::create_builtin_types);
      }

      v5 = x_hash_table_new_(x_string_hash, x_string_compare, 0, 0, 0, 0);
      for (i = 0; i != 192; i += 8)
      {
        hash_table_modify(v5, *(*(CAML::ObjCContext::_builtin_types + i) + 8), *(CAML::ObjCContext::_builtin_types + i), 0);
      }

      hash_table_modify(v5, "NSString", *(CAML::ObjCContext::_builtin_types + 32), 0);
      *(v4 + 13) = v5;
    }

    v2->_data = v4;
  }

  return v2;
}

- (id)elementValue
{
  v2 = *(self->_data + 11);
  if (v2)
  {
    return *(v2 + 64);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  data = self->_data;
  if (data)
  {
    (*(*data + 8))(data, a2);
  }

  v4.receiver = self;
  v4.super_class = CAMLParser;
  [(CAMLParser *)&v4 dealloc];
}

- (void)parserWarning:(id)warning
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:warning arguments:&v5];
  CAML::Context::warning(self->_data, "%s", [v4 UTF8String]);
}

- (void)parserError:(id)error
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:error arguments:&v5];
  CAML::Context::error(self->_data, "%s", [v4 UTF8String]);
}

- (id)didFailToLoadResourceFromURL:(id)l
{
  result = (*(*self->_data + 88))(self->_data, l);
  if (result)
  {

    return result;
  }

  return result;
}

- (id)willLoadResourceFromURL:(id)l
{
  result = (*(*self->_data + 72))(self->_data, l);
  if (result)
  {
    v4 = result;

    return v4;
  }

  return result;
}

- (id)attributeForKey:(id)key remove:(BOOL)remove
{
  v4 = *(*(self->_data + 6) + 216);
  if (!v4)
  {
    return 0;
  }

  v5 = CAML::memq_(v4, [key UTF8String], remove);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];

  return [v7 stringWithUTF8String:v6];
}

- (void)setElementValue:(id)value
{
  v3 = *(self->_data + 11);
  if (v3)
  {
    CAML::State::set_value(v3, value);
  }
}

- (id)objectById:(id)id
{
  result = *(self->_data + 8);
  if (result)
  {
    result = CFDictionaryGetValue(result, id);
    if (result)
    {
      return *(result + 1);
    }
  }

  return result;
}

- (BOOL)parseContentsOfURL:(id)l
{
  v19[2] = *MEMORY[0x1E69E9840];
  v17 = 0;
  data = self->_data;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:l options:0 error:&v17];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load CAPackage from URL: %@", l];
  if (v17)
  {
    v8 = *MEMORY[0x1E696AA08];
    v18[0] = *MEMORY[0x1E696A578];
    v18[1] = v8;
    v19[0] = v7;
    v19[1] = v17;
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 2)}];
    v17 = v9;
    if (v9)
    {
      CAML::Context::set_error(data, v9);
    }
  }

  if (!v6)
  {
    return 0;
  }

  v10 = *(data + 2);
  if (!v10)
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, l);
    if (PathComponent)
    {
      v12 = PathComponent;
      CAML::Context::set_base_url(data, PathComponent);
      CFRelease(v12);
    }
  }

  v13 = *(data + 3);
  CAML::Context::set_current_url(data, l);
  v14 = [(CAMLParser *)self parseData:v6];
  CAML::Context::set_current_url(data, v13);
  if (!v10)
  {
    v15 = *(data + 2);
    if (v15)
    {
      CFRelease(v15);
      *(data + 2) = 0;
    }
  }

  return v14;
}

- (BOOL)parseData:(id)data
{
  bytes = [data bytes];
  v6 = [data length];

  return [(CAMLParser *)self parseBytes:bytes length:v6];
}

- (BOOL)parseString:(id)string
{
  uTF8String = [string UTF8String];
  v5 = strlen(uTF8String);

  return [(CAMLParser *)self parseBytes:uTF8String length:v5];
}

- (BOOL)parseBytes:(const char *)bytes length:(unint64_t)length
{
  lengthCopy = length;
  v7 = objc_autoreleasePoolPush();
  pthread_mutex_lock(&parser_mutex);
  while (parser_wip)
  {
    v8 = parser_wip;
    while (*v8 != bytes)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    pthread_cond_wait(&parser_cond, &parser_mutex);
  }

LABEL_8:
  parser_wip = x_list_prepend(parser_wip, bytes);
  pthread_mutex_unlock(&parser_mutex);
  data = self->_data;
  v10 = *(data + 4);
  if (v10)
  {
    CFRelease(v10);
    *(data + 4) = 0;
  }

  v11 = *(data + 1);
  if (!v11)
  {
    if (CAML::Context::_sax_vtable_once != -1)
    {
      dispatch_once_f(&CAML::Context::_sax_vtable_once, 0, CAML::Context::create_sax_vtable);
    }

    PushParserCtxt = xmlCreatePushParserCtxt(CAML::Context::_sax_vtable, data, 0, 0, 0);
    *(data + 1) = PushParserCtxt;
    if (!PushParserCtxt)
    {
      v13 = 0;
      goto LABEL_16;
    }

    xmlCtxtUseOptions(PushParserCtxt, 2);
    CAML::Context::push_state(data, 1, 0, 0, 0);
    v11 = *(data + 1);
  }

  xmlParseChunk(v11, bytes, lengthCopy, 0);
  v13 = *(data + 4) == 0;
LABEL_16:
  pthread_mutex_lock(&parser_mutex);
  v14 = parser_wip;
  x_list_remove(parser_wip, bytes);
  parser_wip = v14;
  pthread_cond_broadcast(&parser_cond);
  pthread_mutex_unlock(&parser_mutex);
  objc_autoreleasePoolPop(v7);
  return v13;
}

- (void)setDelegate:(id)delegate
{
  data = self->_data;
  if (*(data + 12) != delegate)
  {
    *(data + 12) = delegate;
    *(data + 112) = *(data + 112) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(data + 112) = *(data + 112) & 0xFD | v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *(data + 112) = *(data + 112) & 0xFB | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *(data + 112) = *(data + 112) & 0xF7 | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *(data + 112) = *(data + 112) & 0xEF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *(data + 112) = *(data + 112) & 0xDF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    *(data + 112) = *(data + 112) & 0xBF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 0x80;
    }

    else
    {
      v10 = 0;
    }

    *(data + 112) = v10 & 0x80 | *(data + 112) & 0x7F;
  }
}

+ (id)parseContentsOfURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  [v4 parseContentsOfURL:l];
  error = [v4 error];
  if (error)
  {
    v6 = error;
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v7 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      lCopy = l;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "Error while parsing CoreAnimation XML document %@: %@", &v10, 0x16u);
    }

    result = 0;
  }

  else
  {
    result = [v4 result];
  }

  return result;
}

@end