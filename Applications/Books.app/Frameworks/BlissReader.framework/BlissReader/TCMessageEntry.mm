@interface TCMessageEntry
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (TCMessageEntry)initWithTag:(int)tag affectedObject:(id)object text:(id)text parameters:(char *)parameters;
- (id)description;
- (id)getParameter:(unsigned int)parameter;
- (int64_t)timeStampCompare:(id)compare;
- (void)addAffectedObject:(id)object;
- (void)dealloc;
- (void)mergeEntries:(id)entries;
@end

@implementation TCMessageEntry

+ (void)initialize
{
  if (!qword_567968)
  {
    v2 = objc_alloc_init(NSMutableCharacterSet);
    qword_567968 = v2;

    [v2 addCharactersInString:@"%"];
  }
}

- (TCMessageEntry)initWithTag:(int)tag affectedObject:(id)object text:(id)text parameters:(char *)parameters
{
  v9 = [(TCMessageEntry *)self init];
  v10 = v9;
  if (v9)
  {
    v9->m_tag = tag;
    v9->m_count = 1;
    [(TCMessageEntry *)v9 addAffectedObject:object];
    parametersCopy = parameters;
    v10->m_text = [[NSString alloc] initWithFormat:text arguments:parameters];
    [text length];
    v11 = [text rangeOfCharacterFromSet:qword_567968];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      do
      {
        v14 = &v11[v12];
        v15 = [text length];
        v16 = [text characterAtIndex:v14];
        if (v16 != 37)
        {
          if (v16 != 64)
          {
            break;
          }

          ++v13;
        }

        v11 = [text rangeOfCharacterFromSet:qword_567968 options:0 range:{v14 + 1, v15 - (v14 + 1)}];
      }

      while (v11 != 0x7FFFFFFFFFFFFFFFLL);
      if (v13 >= 1)
      {
        v10->m_parameters = objc_alloc_init(NSMutableArray);
        do
        {
          parametersCopy2 = parameters;
          parameters += 8;
          m_parameters = v10->m_parameters;
          if (*parametersCopy2)
          {
            v19 = [*parametersCopy2 description];
            v20 = m_parameters;
          }

          else
          {
            v20 = v10->m_parameters;
            v19 = @"(null)";
          }

          [(NSArray *)v20 addObject:v19];
          --v13;
        }

        while (v13);
      }
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TCMessageEntry;
  [(TCMessageEntry *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->m_tag == *(equal + 4))
  {
    v6 = [(NSString *)self->m_text isEqualToString:*(equal + 3)];
    if (v6)
    {
      m_parameters = self->m_parameters;
      if (m_parameters == *(equal + 4))
      {
        LOBYTE(v6) = 1;
      }

      else
      {

        LOBYTE(v6) = [(NSArray *)m_parameters isEqual:?];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)getParameter:(unsigned int)parameter
{
  if ([(NSArray *)self->m_parameters count]<= parameter)
  {
    return 0;
  }

  m_parameters = self->m_parameters;

  return [(NSArray *)m_parameters objectAtIndex:parameter];
}

- (int64_t)timeStampCompare:(id)compare
{
  m_timeStamp = self->m_timeStamp;
  v4 = *(compare + 1);
  v5 = m_timeStamp >= v4;
  v6 = m_timeStamp > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  m_count = self->m_count;
  if (m_count == 1)
  {
    return self->m_text;
  }

  else
  {
    return [NSString stringWithFormat:@"%@ (%dx)", self->m_text, m_count, v2, v3];
  }
}

- (void)mergeEntries:(id)entries
{
  self->m_count += [entries getCount];
  affectedObjects = [entries affectedObjects];
  if ([affectedObjects count])
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      m_affectedObjects = objc_alloc_init(NSMutableArray);
      self->m_affectedObjects = m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObjectsFromArray:affectedObjects];
  }
}

- (void)addAffectedObject:(id)object
{
  if (object)
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      m_affectedObjects = objc_alloc_init(NSMutableArray);
      self->m_affectedObjects = m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObject:object];
  }
}

@end