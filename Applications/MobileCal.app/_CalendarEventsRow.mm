@interface _CalendarEventsRow
- (_CalendarEventsRow)init;
- (id)occurrenceForDay:(unint64_t)a3;
- (unint64_t)spaceGapFor:(id)a3;
- (void)addOccurrenceBlock:(id)a3;
@end

@implementation _CalendarEventsRow

- (_CalendarEventsRow)init
{
  v6.receiver = self;
  v6.super_class = _CalendarEventsRow;
  v2 = [(_CalendarEventsRow *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    blocks = v2->_blocks;
    v2->_blocks = v3;

    v2->_occupyingDays = 0;
  }

  return v2;
}

- (void)addOccurrenceBlock:(id)a3
{
  v19 = a3;
  [(NSMutableArray *)self->_blocks addObject:v19];
  v4 = [v19 startRange];
  v5 = [v19 length];
  v6 = self->_occupyingDays | (1 << v4);
  if (v5 != 1)
  {
    v7 = vdupq_n_s64(v4);
    v8 = vaddq_s64(v7, xmmword_1001F8260);
    v9 = self->_occupyingDays | (1 << v4);
    v10 = vaddq_s64(v7, xmmword_1001F8270);
    v11 = vdupq_n_s64(v5 - 2);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    do
    {
      v14 = v9;
      v15 = vdupq_n_s64(4uLL);
      v9 = vorrq_s8(vshlq_u32(v12, vaddq_s32(vuzp1q_s32(v10, v8), v12)), v9);
      v8 = vaddq_s64(v8, v15);
      v10 = vaddq_s64(v10, v15);
      v13 -= 4;
    }

    while (((v5 + 2) & 0xFFFFFFFFFFFFFFFCLL) + v13 != 4);
    v16 = vdupq_n_s64(-v13);
    v17 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vorrq_s8(v16, xmmword_1001F8270), v11), vcgtq_u64(vorrq_s8(v16, xmmword_1001F8260), v11)), v14, v9);
    v18 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v6 = v18.i32[0] | v18.i32[1];
  }

  self->_occupyingDays = v6;
}

- (id)occurrenceForDay:(unint64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_blocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 startRange];
        v11 = [v9 length];
        if (v10 <= a3 && &v11[v10 - 1] >= a3)
        {
          v12 = v9;
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (unint64_t)spaceGapFor:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_blocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) gapBetweenBlock:{v4, v13}];
        if (v11 == -1)
        {
          v8 = -1;
          goto LABEL_14;
        }

        if (v11 > v8)
        {
          v8 = v11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:

  return v8;
}

@end