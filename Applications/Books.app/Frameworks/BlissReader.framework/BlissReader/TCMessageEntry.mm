@interface TCMessageEntry
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (TCMessageEntry)initWithTag:(int)a3 affectedObject:(id)a4 text:(id)a5 parameters:(char *)a6;
- (id)description;
- (id)getParameter:(unsigned int)a3;
- (int64_t)timeStampCompare:(id)a3;
- (void)addAffectedObject:(id)a3;
- (void)dealloc;
- (void)mergeEntries:(id)a3;
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

- (TCMessageEntry)initWithTag:(int)a3 affectedObject:(id)a4 text:(id)a5 parameters:(char *)a6
{
  v9 = [(TCMessageEntry *)self init];
  v10 = v9;
  if (v9)
  {
    v9->m_tag = a3;
    v9->m_count = 1;
    [(TCMessageEntry *)v9 addAffectedObject:a4];
    v22 = a6;
    v10->m_text = [[NSString alloc] initWithFormat:a5 arguments:a6];
    [a5 length];
    v11 = [a5 rangeOfCharacterFromSet:qword_567968];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      do
      {
        v14 = &v11[v12];
        v15 = [a5 length];
        v16 = [a5 characterAtIndex:v14];
        if (v16 != 37)
        {
          if (v16 != 64)
          {
            break;
          }

          ++v13;
        }

        v11 = [a5 rangeOfCharacterFromSet:qword_567968 options:0 range:{v14 + 1, v15 - (v14 + 1)}];
      }

      while (v11 != 0x7FFFFFFFFFFFFFFFLL);
      if (v13 >= 1)
      {
        v10->m_parameters = objc_alloc_init(NSMutableArray);
        do
        {
          v17 = a6;
          a6 += 8;
          m_parameters = v10->m_parameters;
          if (*v17)
          {
            v19 = [*v17 description];
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

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->m_tag == *(a3 + 4))
  {
    v6 = [(NSString *)self->m_text isEqualToString:*(a3 + 3)];
    if (v6)
    {
      m_parameters = self->m_parameters;
      if (m_parameters == *(a3 + 4))
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

- (id)getParameter:(unsigned int)a3
{
  if ([(NSArray *)self->m_parameters count]<= a3)
  {
    return 0;
  }

  m_parameters = self->m_parameters;

  return [(NSArray *)m_parameters objectAtIndex:a3];
}

- (int64_t)timeStampCompare:(id)a3
{
  m_timeStamp = self->m_timeStamp;
  v4 = *(a3 + 1);
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

- (void)mergeEntries:(id)a3
{
  self->m_count += [a3 getCount];
  v5 = [a3 affectedObjects];
  if ([v5 count])
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      m_affectedObjects = objc_alloc_init(NSMutableArray);
      self->m_affectedObjects = m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObjectsFromArray:v5];
  }
}

- (void)addAffectedObject:(id)a3
{
  if (a3)
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      m_affectedObjects = objc_alloc_init(NSMutableArray);
      self->m_affectedObjects = m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObject:a3];
  }
}

@end