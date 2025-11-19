@interface NWConcrete_nw_resolver_service
- (NSString)description;
@end

@implementation NWConcrete_nw_resolver_service

- (NSString)description
{
  v2 = self;
  v11 = 0;
  if (v2)
  {
    v3 = v2;
    priority = v2->priority;
    v5 = v2->service_host;
    v6 = v5;
    if (priority)
    {
      if (v5)
      {
        logging_description = _nw_endpoint_get_logging_description(v5);
      }

      else
      {
        logging_description = "<NULL>";
      }

      asprintf(&v11, "(Service for %s, priority=%u)", logging_description, v3[16]);
    }

    else
    {
      if (v5)
      {
        v8 = _nw_endpoint_get_logging_description(v5);
      }

      else
      {
        v8 = "<NULL>";
      }

      asprintf(&v11, "(Service Alias for %s)", v8);
    }

    v9 = v11;

    if (v9)
    {
      v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v9, 0x8000100u, *MEMORY[0x1E695E488]);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end