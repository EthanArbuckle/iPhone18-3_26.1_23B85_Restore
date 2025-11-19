@interface NEIKEv2RTT
- (BOOL)getCurrentTime:(uint64_t)a1;
- (NEIKEv2RTT)init;
- (uint64_t)resetRTTMeasurement;
- (unint64_t)nextRetransmissionInterval;
@end

@implementation NEIKEv2RTT

- (NEIKEv2RTT)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2RTT;
  v2 = [(NEIKEv2RTT *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = xmmword_1BAA4E550;
    *(v2 + 3) = -1;
    *(v2 + 2) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = 30;
    *(v2 + 7) = 0;
    *(v2 + 8) = 1000;
    *(v2 + 4) = 0;
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7[0] = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

- (BOOL)getCurrentTime:(uint64_t)a1
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (getCurrentTime__onceToken != -1)
    {
      dispatch_once(&getCurrentTime__onceToken, &__block_literal_global_27777);
    }

    v2 = mach_continuous_time() * getCurrentTime__tb_info / *algn_1EBC11B5C;
    *a1 = v2 / 0x3B9ACA00;
    *(a1 + 8) = v2 % 0x3B9ACA00 / 0x3E8;
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[NEIKEv2RTT getCurrentTime:]";
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null now", &v6, 0xCu);
    }
  }

  result = a1 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __29__NEIKEv2RTT_getCurrentTime___block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  result = mach_timebase_info(&getCurrentTime__tb_info);
  if (result)
  {
    v3 = result;
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v5 = v3;
      _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "mach_timebase_info returned %u", buf, 8u);
    }

    abort();
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)resetRTTMeasurement
{
  v1 = *(result + 24);
  if (!v1 && *(result + 8) >= 2u)
  {
    *(result + 32) = 12000;
  }

  v2 = *(result + 48);
  v3 = *(result + 32) + (v1 >> 3);
  if (v2 <= v3 >> 2)
  {
    v4 = v3 >> 2;
  }

  else
  {
    v4 = *(result + 48);
  }

  *(result + 64) = v4;
  if (v4 < v2)
  {
    goto LABEL_10;
  }

  if (v4 >= 0xFA01)
  {
    v2 = 64000;
LABEL_10:
    *(result + 64) = v2;
  }

  *(result + 40) = 0;
  *(result + 8) = 0;
  *(result + 12) = -1;
  return result;
}

- (unint64_t)nextRetransmissionInterval
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 48);
  v2 = *(a1 + 32) + (*(a1 + 24) >> 3);
  if (v1 <= v2 >> 2)
  {
    v3 = v2 >> 2;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  v4 = *(a1 + 8);
  v5 = v3 * IKEV2_SESSION_RXMT_BACKOFF[*(a1 + 8)];
  *(a1 + 64) = v5;
  if (v5 >= v1)
  {
    if (v5 < 0xFA01)
    {
      goto LABEL_9;
    }

    v1 = 64000;
  }

  *(a1 + 64) = v1;
  v5 = v1;
LABEL_9:
  if (v4 <= 0xB)
  {
    *(a1 + 8) = v4 + 1;
  }

  return v5;
}

@end