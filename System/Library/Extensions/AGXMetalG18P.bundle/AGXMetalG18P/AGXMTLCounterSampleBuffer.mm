@interface AGXMTLCounterSampleBuffer
- (AGXMTLCounterSampleBuffer)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error;
- (AGXMTLCounterSampleBuffer)initWithDevice:(id)device length:(unint64_t)length label:(id)label options:(unint64_t)options error:(id *)error;
- (id)resolveCounterRange:(_NSRange)range;
- (void)dealloc;
@end

@implementation AGXMTLCounterSampleBuffer

- (id)resolveCounterRange:(_NSRange)range
{
  if (!range.length || range.location + range.length > self->_sampleCount)
  {
    return 0;
  }

  location = range.location;
  v6 = 8 * range.length;
  result = [MEMORY[0x29EDB8DF8] dataWithLength:8 * range.length];
  if (result)
  {
    v7 = result;
    memcpy([result mutableBytes], -[IOGPUMetalBuffer contents](self->_buffer, "contents") + 8 * location, v6);
    return v7;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXMTLCounterSampleBuffer;
  [(AGXMTLCounterSampleBuffer *)&v3 dealloc];
}

- (AGXMTLCounterSampleBuffer)initWithDevice:(id)device length:(unint64_t)length label:(id)label options:(unint64_t)options error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v29.receiver = self;
  v29.super_class = AGXMTLCounterSampleBuffer;
  v12 = [(AGXMTLCounterSampleBuffer *)&v29 init];
  if (!v12)
  {
    if (error)
    {
      v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"Internal error" forKey:*MEMORY[0x29EDB9ED8]];
      v18 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v19 = [v18 initWithDomain:*MEMORY[0x29EDBB3D8] code:2 userInfo:v17];
      result = 0;
      *error = v19;
      return result;
    }

    return 0;
  }

  v13 = v12;
  if (length - 32769 <= 0xFFFFFFFFFFFF7FFFLL)
  {
    0x8000 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Invalid sample buffer length: %llu B. Expected range: %zu -> %u", length, 8, 0x8000];
    if (error)
    {
      v15 = 0x8000;
      if (0x8000)
      {
LABEL_7:
        v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v15 forKey:*MEMORY[0x29EDB9ED8]];
LABEL_14:
        v22 = objc_alloc(MEMORY[0x29EDB9FA0]);
        *error = [v22 initWithDomain:*MEMORY[0x29EDBB3D8] code:1 userInfo:v16];
        goto LABEL_15;
      }

LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ((length & 7) != 0)
  {
    v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Invalid sample buffer length: %llu B. Length must be aligned to %zu B", length, 8];
    if (error)
    {
      v15 = v21;
      if (v21)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

LABEL_15:

    return 0;
  }

  v23 = [[AGXBuffer alloc] initCounterSampleBufferWithDevice:device length:length options:options];
  v24 = v13;
  v13->_buffer = v23;
  if (v23)
  {
    v13->_device = device;
    v25 = [label copy];
    result = v13;
    v13->_label = v25;
    v13->_sampleCount = length >> 3;
    return result;
  }

  if (error)
  {
    v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"Cannot allocate sample buffer" forKey:*MEMORY[0x29EDB9ED8]];
    v27 = objc_alloc(MEMORY[0x29EDB9FA0]);
    v28 = [v27 initWithDomain:*MEMORY[0x29EDBB3D8] code:0 userInfo:v26];
    v24 = v13;
    *error = v28;
  }

  return 0;
}

- (AGXMTLCounterSampleBuffer)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if ([objc_msgSend(objc_msgSend(descriptor "counterSet")] != 1)
  {
    if (error)
    {
      v17 = MEMORY[0x29EDB8DC0];
      v18 = *MEMORY[0x29EDB9ED8];
      v19 = @"Invalid counter set size. Expecting 1 counter";
LABEL_14:
      v21 = [v17 dictionaryWithObject:v19 forKey:v18];
LABEL_15:
      v22 = objc_alloc(MEMORY[0x29EDB9FA0]);
      *error = [v22 initWithDomain:*MEMORY[0x29EDBB3D8] code:1 userInfo:v21];
      return 0;
    }

    return 0;
  }

  v9 = [objc_msgSend(descriptor "counterSet")];
  v10 = *MEMORY[0x29EDBB368];
  if (([v9 isEqualToString:*MEMORY[0x29EDBB368]] & 1) == 0)
  {
    v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Invalid counter set name. Expecting: %@. Found: %@", v10, v9];
    if (error)
    {
      v19 = v20;
      if (!v20)
      {
LABEL_19:
        v21 = 0;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    return 0;
  }

  v11 = [objc_msgSend(objc_msgSend(objc_msgSend(descriptor "counterSet")];
  v12 = *MEMORY[0x29EDBB370];
  if (([v11 isEqualToString:*MEMORY[0x29EDBB370]] & 1) == 0)
  {
    v23 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Invalid counter name. Expecting: %@. Found: %@", v12, v11];
    if (!error)
    {
      return 0;
    }

    v19 = v23;
    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_13:
    v17 = MEMORY[0x29EDB8DC0];
    v18 = *MEMORY[0x29EDB9ED8];
    goto LABEL_14;
  }

  v13 = 8 * [descriptor sampleCount];
  v14 = 16 * ([descriptor storageMode] & 0xF);
  label = [descriptor label];

  return [(AGXMTLCounterSampleBuffer *)self initWithDevice:device length:v13 label:label options:v14 error:error];
}

@end